------------------------------------------------------------------------
-- Example: Left recursive expression grammar
------------------------------------------------------------------------
open import Codata.Musical.Notation
open import Data.Char as Char using (Char)
-- open import Data.Unit.Polymorphic.Base using (⊤)
open import Data.List
open import Data.Nat
open import Data.Nat.Properties using (≤-decTotalOrder)
open import Data.Product renaming (_,_ to ⟨_,_⟩) using (_×_)
open import Data.Nat.Show using (show)
open import Data.String as String using (String)
open import Function
open import Relation.Binary.PropositionalEquality as P using (_≡_)
import Level
open import Data.Maybe hiding (_>>=_; map)
open import Relation.Nullary.Decidable using (yes; no)

open import TotalParserCombinators.BreadthFirst
open import TotalParserCombinators.Lib
open import TotalParserCombinators.Parser

import IO
import IO.Primitive.Core
import IO.Finite as IO
open Token Char Char._≟_

------------------------------------------------------------------------
-- An expression grammar

-- t ∷= t '+' f ∣ f
-- f ∷= f '*' a ∣ a
-- a ∷= '(' t ')' ∣ n
-- l ::= n n l | ­∅

-- Monadic implementation of the grammar.
emp : List (ℕ × ℕ)
emp = []
mutual

  term   = factor
          ∣ ♯ term            >>= λ e₁ →
            tok '+'           >>= λ _  →
            factor            >>= λ e₂ →
            return (e₁ + e₂)

  factor = atom
          ∣ ♯ factor          >>= λ e₁ →
            tok '*'           >>= λ _  →
            atom              >>= λ e₂ →
            return (e₁ * e₂)

  atom   = number
          ∣ tok '('           >>= λ _  →
            ♯ term            >>= λ e  →
            tok ')'           >>= λ _  →
            return e
  
  pair   = number             >>= λ l  →
          whitespace            >>= λ _  →
           number             >>= λ r  →
           whitespace         >>= λ _  →
                      --  >>= λ ps →
          -- return (ps)
          return (⟨ l , r ⟩)

  listOfPairs = pair +
          --                           ; nothing → return ([]) --return {!  !}
          --     -- return (just ((⟨ l , r ⟩) ∷ ps))
          --  }

------------------------------------------------------------------------
-- Unit tests

test : ∀ {R xs} → Parser Char R xs → String → List R
test p = parse p ∘ String.toList

-- Some examples have been commented out/ in order to reduce
-- type-checking times.

-- ex₁ : test Applicative.term "1*(2+3)" ≡ [ 5 ]
-- ex₁ = P.refl

-- ex₂ : test Applicative.term "1*(2+3" ≡ []
-- ex₂ = P.refl

_ : [ "6" ] ≡ map show [ 6 ]
_ = P.refl

_ : test listOfPairs "" ≡ []
_ = P.refl

_ : test pair "1 3\n" ≡ [ ⟨ 1 , 3 ⟩ ] 
_ = P.refl

_ : test listOfPairs "1 3\n8 10\n" ≡ [ ⟨ 1 , 3 ⟩ ∷ ⟨ 8 , 10 ⟩ ∷ [] ]
_ = P.refl

manDistance : List (ℕ × ℕ) → ℕ
manDistance [] = zero
manDistance (⟨ fst , snd ⟩ ∷ xs) with fst ≤? snd
... | yes _ = (snd ∸ fst) + (manDistance xs)
... | no _ = (fst ∸ snd) + (manDistance xs) --= (snd ∸ fst) + (sumPairs xs)

_ : Data.List.map manDistance (test listOfPairs "1 3\n8 10\n") ≡ [ 4 ]
_ = P.refl

split : List (ℕ × ℕ) → (List ℕ) × (List ℕ)
split = Data.List.foldl go ⟨ [] , [] ⟩
  where
    go : _
    go ⟨ xs , ys ⟩ ⟨ x , y ⟩ = ⟨ x ∷ xs , y ∷ ys ⟩

joinPairs : (List ℕ) × (List ℕ) → List (ℕ × ℕ)
joinPairs ⟨ l , r ⟩ = Data.List.zip l r

open import Data.List.Sort.Base
open import Data.List.Sort.MergeSort (≤-decTotalOrder)
msNats : List ℕ → List ℕ
msNats = SortingAlgorithm.sort mergeSort

sortPairs : List (ℕ × ℕ) → List (ℕ × ℕ)
sortPairs ps = joinPairs (go (split ps))
  where
    go : List ℕ × List ℕ → List ℕ × List ℕ
    go ⟨ xs , ys ⟩ = ⟨ msNats xs , msNats ys ⟩

{-# FOREIGN GHC import qualified System.Environment #-}
{-# FOREIGN GHC import qualified System.FilePath    #-}
{-# FOREIGN GHC import qualified Data.Text          #-}
{-# FOREIGN GHC import qualified Data.Traversable #-}

open import Agda.Builtin.Unit using (⊤)
import IO.Base as IO

private
  variable
    a : Level.Level

postulate
  primGetArgs : IO.Primitive.Core.IO (List String)
  primPrintStrList : List { Level.zero } ℕ → IO.Primitive.Core.IO { Level.zero } ⊤
  -- primPrintStrList : List ℕ → {!   !}

-- {-# COMPILE GHC Level.Lift = data HsD (C1) #-}
{-# COMPILE GHC primGetArgs = fmap Data.Text.pack <$> System.Environment.getArgs #-}
{-# COMPILE GHC primPrintStrList = \xs -> traverse print xs >> pure ()  #-}

getArgs : IO.IO (List String)
getArgs = IO.lift primGetArgs

-- printStrList : List ℕ → IO.IO { Level.zero } ⊤
printStrList : List ℕ → IO.IO {Level.zero} ⊤
printStrList xs = IO.lift (primPrintStrList xs)

main : IO.Main
main = IO.run $
  getArgs IO.>>= λ { (file ∷ []) → IO.readFile file 
                                   IO.>>= λ contents → printStrList (Data.List.map (manDistance ∘ sortPairs) (test listOfPairs contents))
                                   IO.>>= λ _ → IO.pure (Level.lift Agda.Builtin.Unit.tt)
                                   ; _ → IO.putStrLn "Usage: DayOne INPUTFILE\n\n" }
 