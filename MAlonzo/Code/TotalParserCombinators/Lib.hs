{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.TotalParserCombinators.Lib where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Char.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics

-- TotalParserCombinators.Lib.ListMonad._>>=_
d__'62''62''61'__28 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__28
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Lib.ListMonad._⊛_
d__'8859'__32 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__32
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- TotalParserCombinators.Lib.ListMonad.rawApplicative
d_rawApplicative_42 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_rawApplicative_42
  = coe
      MAlonzo.Code.Effect.Monad.d_rawApplicative_32
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Lib._∈[_]⋆·_
d__'8712''91'_'93''8902''183'__62 a0 a1 a2 a3 a4 a5 = ()
data T__'8712''91'_'93''8902''183'__62
  = C_'91''93'_72 |
    C__'8759'__88 [AgdaAny] [AgdaAny]
                  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
                  T__'8712''91'_'93''8902''183'__62
-- TotalParserCombinators.Lib._⋆
d__'8902'_94 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d__'8902'_94 ~v0 ~v1 v2 = du__'8902'_94 v2
du__'8902'_94 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du__'8902'_94 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
      (coe
         MAlonzo.Code.Effect.Applicative.d_pure_32
         (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
            (coe
               MAlonzo.Code.Effect.Monad.d_rawMonad_214
               (coe
                  MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                  (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
         erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe du__'43'_100 (coe v0))
-- TotalParserCombinators.Lib._+
d__'43'_100 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d__'43'_100 ~v0 ~v1 v2 = du__'43'_100 v2
du__'43'_100 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du__'43'_100 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22) v0)
      (coe du_'9839''45'3_2343 (coe v0))
-- TotalParserCombinators.Lib.KleeneStar.sound
d_sound_118 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  T__'8712''91'_'93''8902''183'__62
d_sound_118 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_sound_118 v5
du_sound_118 ::
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  T__'8712''91'_'93''8902''183'__62
du_sound_118 v0
  = case coe v0 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v8
        -> coe seq (coe v8) (coe C_'91''93'_72)
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v8
        -> case coe v8 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v11 v12 v13 v14 v19 v20
               -> case coe v19 of
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v23 v28
                      -> coe C__'8759'__88 v13 v14 v28 (coe du_sound_118 (coe v20))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.KleeneStar.complete
d_complete_134 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete_134 ~v0 ~v1 v2 ~v3 ~v4 v5 = du_complete_134 v2 v5
du_complete_134 ::
  [AgdaAny] ->
  T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete_134 v0 v1
  = case coe v1 of
      C_'91''93'_72
        -> coe
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)
      C__'8759'__88 v4 v5 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                          (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v9))
                          (coe v10) (coe v4) (coe v5)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v9
                             v7)
                          (coe du_complete_134 (coe v10) (coe v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.KleeneStar.complete∘sound
d_complete'8728'sound_164 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_complete'8728'sound_164 = erased
-- TotalParserCombinators.Lib.KleeneStar.sound∘complete
d_sound'8728'complete_198 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete_198 = erased
-- TotalParserCombinators.Lib.KleeneStar.correct
d_correct_226 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_226 ~v0 ~v1 v2 ~v3 ~v4 = du_correct_226 v2
du_correct_226 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_226 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350 (coe du_sound_118)
      (coe du_complete_134 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.Lib.KleeneStar.unrestricted-incomplete
d_unrestricted'45'incomplete_254 ::
  () ->
  () ->
  AgdaAny ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   T__'8712''91'_'93''8902''183'__62 ->
   MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_unrestricted'45'incomplete_254 = erased
-- TotalParserCombinators.Lib.KleeneStar._.to
d_to_270 ::
  () ->
  () ->
  AgdaAny ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   T__'8712''91'_'93''8902''183'__62 ->
   MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10) ->
  Integer -> [AgdaAny]
d_to_270 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 = du_to_270 v2 v6
du_to_270 :: AgdaAny -> Integer -> [AgdaAny]
du_to_270 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_replicate_294 (coe v1) (coe v0)
-- TotalParserCombinators.Lib.KleeneStar._.helper
d_helper_276 ::
  () ->
  () ->
  AgdaAny ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   T__'8712''91'_'93''8902''183'__62 ->
   MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_276 = erased
-- TotalParserCombinators.Lib.KleeneStar._.injective
d_injective_278 ::
  () ->
  () ->
  AgdaAny ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   T__'8712''91'_'93''8902''183'__62 ->
   MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_278 = erased
-- TotalParserCombinators.Lib.KleeneStar._.lemma
d_lemma_292 ::
  () ->
  () ->
  AgdaAny ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  ([AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   T__'8712''91'_'93''8902''183'__62 ->
   MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10) ->
  Integer -> T__'8712''91'_'93''8902''183'__62
d_lemma_292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_lemma_292 v6
du_lemma_292 :: Integer -> T__'8712''91'_'93''8902''183'__62
du_lemma_292 v0
  = case coe v0 of
      0 -> coe C_'91''93'_72
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                C__'8759'__88 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)
                (coe du_lemma_292 (coe v1)))
-- TotalParserCombinators.Lib.^-initial
d_'94''45'initial_300 ::
  () -> [AgdaAny] -> Integer -> [MAlonzo.Code.Data.Vec.Base.T_Vec_28]
d_'94''45'initial_300 ~v0 v1 v2 = du_'94''45'initial_300 v1 v2
du_'94''45'initial_300 ::
  [AgdaAny] -> Integer -> [MAlonzo.Code.Data.Vec.Base.T_Vec_28]
du_'94''45'initial_300 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
             (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Effect.Applicative.du__'8859'__70
                (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24))
                (coe
                   MAlonzo.Code.Data.List.Base.du_map_22
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38) (coe v0))
                (coe du_'94''45'initial_300 (coe v0) (coe v2)))
-- TotalParserCombinators.Lib._^_
d__'94'__316 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d__'94'__316 ~v0 ~v1 v2 v3 v4 = du__'94'__316 v2 v3 v4
du__'94'__316 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du__'94'__316 v0 v1 v2
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
             (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32)
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                (coe
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                   (coe
                      MAlonzo.Code.Data.List.Base.du_map_22
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38) (coe v0)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                   (coe du_'94''45'initial_300 (coe v0) (coe v3)))
                (coe
                   MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v0
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38) v1)
                (coe du__'94'__316 (coe v0) (coe v1) (coe v3)))
-- TotalParserCombinators.Lib.↑-initial
d_'8593''45'initial_326 ::
  () -> [AgdaAny] -> Integer -> [[AgdaAny]]
d_'8593''45'initial_326 ~v0 v1 v2 = du_'8593''45'initial_326 v1 v2
du_'8593''45'initial_326 :: [AgdaAny] -> Integer -> [[AgdaAny]]
du_'8593''45'initial_326 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe MAlonzo.Code.Data.Vec.Base.du_toList_592)
      (coe du_'94''45'initial_300 (coe v0) (coe v1))
-- TotalParserCombinators.Lib._↑_
d__'8593'__336 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d__'8593'__336 ~v0 ~v1 v2 v3 v4 = du__'8593'__336 v2 v3 v4
du__'8593'__336 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du__'8593'__336 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
      (coe du_'94''45'initial_300 (coe v0) (coe v2))
      (coe MAlonzo.Code.Data.Vec.Base.du_toList_592)
      (coe du__'94'__316 (coe v0) (coe v1) (coe v2))
-- TotalParserCombinators.Lib.Exactly.↑≲⋆
d_'8593''8818''8902'_352 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_'8593''8818''8902'_352 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8593''8818''8902'_352 v3 v4 v5
du_'8593''8818''8902'_352 ::
  Integer ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
du_'8593''8818''8902'_352 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
      (\ v3 v4 v5 ->
         case coe v5 of
           MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v8 v13
             -> coe
                  du_complete_134
                  (coe MAlonzo.Code.Data.Vec.Base.du_toList_592 (coe v8))
                  (coe du_helper_370 (coe v0) (coe v13))
           _ -> MAlonzo.RTE.mazUnreachableError)
      v1 v2
-- TotalParserCombinators.Lib.Exactly._.helper
d_helper_370 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  T__'8712''91'_'93''8902''183'__62
d_helper_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_helper_370 v6 v9
du_helper_370 ::
  Integer ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  T__'8712''91'_'93''8902''183'__62
du_helper_370 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe C_'91''93'_72)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v5 v6 v7 v8 v13 v14
                  -> case coe v13 of
                       MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v17 v22
                         -> coe
                              C__'8759'__88 v7 v8 v22 (coe du_helper_370 (coe v2) (coe v14))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- TotalParserCombinators.Lib.Exactly.⋆≲∃↑
d_'8902''8818''8707''8593'_394 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8902''8818''8707''8593'_394 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8902''8818''8707''8593'_394 v3 v5
du_'8902''8818''8707''8593'_394 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8902''8818''8707''8593'_394 v0 v1
  = let v2
          = coe du_helper_414 (coe v0) (coe du_sound_118 (coe v1)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                  -> case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v5
                                 v8)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- TotalParserCombinators.Lib.Exactly._.helper
d_helper_414 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
  = du_helper_414 v6 v8
du_helper_414 ::
  [AgdaAny] ->
  T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_414 v0 v1
  = case coe v1 of
      C_'91''93'_72
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                   (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)))
      C__'8759'__88 v4 v5 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_map_128
                    (coe (\ v11 -> addInt (coe (1 :: Integer)) (coe v11)))
                    (coe
                       (\ v11 ->
                          coe
                            MAlonzo.Code.Data.Product.Base.du_map_128
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 (coe v9))
                            (coe
                               (\ v12 ->
                                  coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128 erased
                                    (coe
                                       (\ v13 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 (coe v9))
                                            (coe v12) (coe v4) (coe v5)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76
                                               v9 v7)))))))
                    (coe du_helper_414 (coe v10) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.return⋆
d_return'8902'_446 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_return'8902'_446 ~v0 ~v1 v2 = du_return'8902'_446 v2
du_return'8902'_446 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_return'8902'_446 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
      (:) v1 v2
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
             (coe
                MAlonzo.Code.Effect.Applicative.d_pure_32
                (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                   (coe
                      MAlonzo.Code.Effect.Monad.d_rawMonad_214
                      (coe
                         MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                         (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                erased v1)
             v2 (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
             (coe du_return'8902'_446 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Return⋆.sound
d_sound_464 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sound_464 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_sound_464 v4 v5
du_sound_464 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sound_464 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v11
               -> coe
                    seq (coe v11)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                       (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v11
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v12 -> v12))
                    (coe
                       (\ v12 ->
                          coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54))
                    (coe du_sound_464 (coe v3) (coe v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Return⋆.complete
d_complete_484 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete_484 ~v0 ~v1 ~v2 v3 v4 = du_complete_484 v3 v4
du_complete_484 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete_484 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v4
        -> coe
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                    (coe du_complete_484 (coe v6) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Return⋆.complete∘sound
d_complete'8728'sound_500 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22
d_complete'8728'sound_500 = erased
-- TotalParserCombinators.Lib.Return⋆.sound∘complete
d_sound'8728'complete_532 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete_532 = erased
-- TotalParserCombinators.Lib.Return⋆.correct
d_correct_556 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_556 ~v0 ~v1 v2 ~v3 ~v4 = du_correct_556 v2
du_correct_556 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_556 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe du_complete'8242'_576 (coe v0)) (coe du_sound_464 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.Lib.Return⋆._.complete′
d_complete'8242'_576 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete'8242'_576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 v10
  = du_complete'8242'_576 v8 v10
du_complete'8242'_576 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete'8242'_576 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_complete_484 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Return⋆._.sound∘complete′
d_sound'8728'complete'8242'_592 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete'8242'_592 = erased
-- TotalParserCombinators.Lib.Return⋆._.complete′∘sound
d_complete'8242''8728'sound_608 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_complete'8242''8728'sound_608 = erased
-- TotalParserCombinators.Lib.Sat.ok-bag
d_ok'45'bag_630 :: () -> Maybe AgdaAny -> [AgdaAny]
d_ok'45'bag_630 ~v0 v1 = du_ok'45'bag_630 v1
du_ok'45'bag_630 :: Maybe AgdaAny -> [AgdaAny]
du_ok'45'bag_630 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Sat.ok
d_ok_638 ::
  () ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_ok_638 ~v0 ~v1 v2 = du_ok_638 v2
du_ok_638 ::
  Maybe AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_ok_638 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Sat.ok-correct
d_ok'45'correct_652 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_ok'45'correct_652 ~v0 ~v1 ~v2 ~v3 v4 = du_ok'45'correct_652 v4
du_ok'45'correct_652 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_ok'45'correct_652 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe du_to_668 (coe v0)) (coe du_from_674 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.Lib.Sat._.to
d_to_668 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_to_668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_to_668 v6 v7
du_to_668 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_to_668 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18))
-- TotalParserCombinators.Lib.Sat._.from
d_from_674 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_from_674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_from_674 v6 v7
du_from_674 ::
  Maybe AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_from_674 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
-- TotalParserCombinators.Lib.Sat._.from∘to
d_from'8728'to_682 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8728'to_682 = erased
-- TotalParserCombinators.Lib.Sat._.to∘from
d_to'8728'from_690 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  [AgdaAny] ->
  Maybe AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8728'from_690 = erased
-- TotalParserCombinators.Lib.Sat.sat
d_sat_700 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_sat_700 ~v0 ~v1 v2 = du_sat_700 v2
du_sat_700 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_sat_700 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe (\ v1 -> coe du_ok'45'bag_630 (coe v0 v1))))
      (coe MAlonzo.Code.TotalParserCombinators.Parser.C_token_136)
      (\ v1 -> coe du_ok_638 (coe v0 v1))
-- TotalParserCombinators.Lib.Sat.correct
d_correct_716 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_716 ~v0 ~v1 ~v2 ~v3 v4 = du_correct_716 v4
du_correct_716 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_716 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe du_to_730 (coe v0)) (coe du_from_740 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.Lib.Sat._.to
d_to_730 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_to_730 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_to_730 v4 v6
du_to_730 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_to_730 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                    (coe v2)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_token_22)
                    (coe
                       MAlonzo.Code.Function.Bundles.d_to_1972
                       (coe du_ok'45'correct_652 (coe v0 v2))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Sat._.from
d_from_740 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_from_740 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_from_740 v4 v6
du_from_740 ::
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_from_740 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v4 v6 v7 v12 v13
        -> coe
             seq (coe v12)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   MAlonzo.Code.Data.Product.Base.du_map_128 erased
                   (coe (\ v14 v15 -> v15))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_from_1974
                      (coe du_ok'45'correct_652 (coe v0 v4)) v13)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.Sat._.from∘to
d_from'8728'to_752 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8728'to_752 = erased
-- TotalParserCombinators.Lib.Sat._.to∘from
d_to'8728'from_766 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8728'from_766 = erased
-- TotalParserCombinators.Lib.sat′
d_sat'8242'_786 ::
  () ->
  (AgdaAny -> Bool) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_sat'8242'_786 ~v0 v1 = du_sat'8242'_786 v1
du_sat'8242'_786 ::
  (AgdaAny -> Bool) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_sat'8242'_786 v0
  = coe
      du_sat_700
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Maybe.Base.d_boolToMaybe_18 (coe v0 v1)))
-- TotalParserCombinators.Lib.whitespace
d_whitespace_790 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_whitespace_790 = coe du_sat'8242'_786 (coe d_isSpace_796)
-- TotalParserCombinators.Lib._.isSpace
d_isSpace_796 :: MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_isSpace_796 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe
         MAlonzo.Code.Data.Char.Properties.d__'61''61'__26 (coe v0)
         (coe ' '))
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8744'__30
         (coe
            MAlonzo.Code.Data.Char.Properties.d__'61''61'__26 (coe v0)
            (coe '\t'))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8744'__30
            (coe
               MAlonzo.Code.Data.Char.Properties.d__'61''61'__26 (coe v0)
               (coe '\n'))
            (coe
               MAlonzo.Code.Data.Char.Properties.d__'61''61'__26 (coe v0)
               (coe '\r'))))
-- TotalParserCombinators.Lib.Token.p
d_p_806 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> Maybe AgdaAny
d_p_806 ~v0 v1 v2 v3 = du_p_806 v1 v2 v3
du_p_806 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> Maybe AgdaAny
du_p_806 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
         erased (coe v0 v1 v2))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- TotalParserCombinators.Lib.Token.tok
d_tok_812 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_tok_812 ~v0 v1 v2 = du_tok_812 v1 v2
du_tok_812 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_tok_812 v0 v1 = coe du_sat_700 (coe du_p_806 (coe v0) (coe v1))
-- TotalParserCombinators.Lib.Token.sound
d_sound_822 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sound_822 ~v0 v1 v2 ~v3 ~v4 v5 = du_sound_822 v1 v2 v5
du_sound_822 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sound_822 v0 v1 v2
  = let v3
          = coe du_from_740 (coe du_p_806 (coe v0) (coe v1)) (coe v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                seq (coe v5)
                (let v6 = coe v0 v1 v4 in
                 coe
                   (case coe v6 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> coe
                             seq (coe v7)
                             (coe
                                seq (coe v8)
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
                      _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- TotalParserCombinators.Lib.Token.p-lemma
d_p'45'lemma_856 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'45'lemma_856 = erased
-- TotalParserCombinators.Lib.Token.complete
d_complete_880 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete_880 ~v0 v1 v2 = du_complete_880 v1 v2
du_complete_880 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete_880 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1972
      (coe du_correct_716 (coe du_p_806 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
-- TotalParserCombinators.Lib.Token.η
d_η_888 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_η_888 = erased
-- TotalParserCombinators.Lib.Token._.helper₂
d_helper'8322'_900 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper'8322'_900 = erased
-- TotalParserCombinators.Lib.Token._.helper
d_helper_924 ::
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22
d_helper_924 = erased
-- TotalParserCombinators.Lib.⋁
d_'8897'_944 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'8897'_944 ~v0 ~v1 ~v2 v3 v4 v5 = du_'8897'_944 v3 v4 v5
du_'8897'_944 ::
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'8897'_944 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
      (coe du_return'8902'_446 (coe v2)) v1
-- TotalParserCombinators.Lib.⋁.sound
d_sound_972 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sound_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_sound_972 v7 v8
du_sound_972 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sound_972 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v4 v6 v7 v12 v13
        -> let v14 = coe du_sound_464 (coe v0) (coe v12) in
           coe
             (case coe v14 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v16) (coe v13))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Lib.⋁.complete
d_complete_1016 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete_1016 ~v0 ~v1 ~v2 v3 ~v4 v5 ~v6 ~v7 v8 v9 v10
  = du_complete_1016 v3 v5 v8 v9 v10
du_complete_1016 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete_1016 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
      (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe v1)
      (coe
         du_complete_484
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v2)))
         (coe v3))
      (coe v4)
-- TotalParserCombinators.Lib.⋁.complete∘sound
d_complete'8728'sound_1046 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_complete'8728'sound_1046 = erased
-- TotalParserCombinators.Lib.⋁.sound∘complete
d_sound'8728'complete_1092 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete_1092 = erased
-- TotalParserCombinators.Lib.digit
d_digit_1118 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_digit_1118
  = coe
      du_sat_700
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
              (coe d_in'45'range_1124 (coe v0))
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe d_to'45'number_1128 (coe v0)))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
-- TotalParserCombinators.Lib._.in-range
d_in'45'range_1124 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Bool
d_in'45'range_1124 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
         erased
         (MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
            (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 '0')
            (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v0)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
         erased
         (MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
            (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v0)
            (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 '9')))
-- TotalParserCombinators.Lib._.to-number
d_to'45'number_1128 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 -> Integer
d_to'45'number_1128 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 v0)
      (coe MAlonzo.Code.Agda.Builtin.Char.d_primCharToNat_28 '0')
-- TotalParserCombinators.Lib.number
d_number_1134 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_number_1134
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                 (coe
                    MAlonzo.Code.Data.List.Base.du_foldl_230
                    (coe (\ v1 -> addInt (coe mulInt (coe (10 :: Integer)) (coe v1))))
                    (coe (0 :: Integer)) (coe v0))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe du__'43'_100 (coe d_digit_1118))
      (\ v0 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
           (coe
              MAlonzo.Code.Data.List.Base.du_foldl_230
              (coe (\ v1 -> addInt (coe mulInt (coe (10 :: Integer)) (coe v1))))
              (coe (0 :: Integer)) (coe v0)))
-- TotalParserCombinators.Lib._.♯-3
d_'9839''45'3_2343 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'3_2343 ~v0 ~v1 v2 = du_'9839''45'3_2343 v2
du_'9839''45'3_2343 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'3_2343 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe du__'8902'_94 (coe v0))
