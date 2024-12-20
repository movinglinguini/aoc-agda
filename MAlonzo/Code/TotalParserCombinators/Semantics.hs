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

module MAlonzo.Code.TotalParserCombinators.Semantics where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Semantics._∈_·_
d__'8712'_'183'__10 a0 a1 a2 a3 a4 a5 = ()
data T__'8712'_'183'__10
  = C_return_18 | C_token_22 |
    C_'8739''45'left_40 T__'8712'_'183'__10 |
    C_'8739''45'right_58 T__'8712'_'183'__10 |
    C_'60''36''62'__76 AgdaAny T__'8712'_'183'__10 |
    C__'8859'__102 (AgdaAny -> AgdaAny) AgdaAny [AgdaAny] [AgdaAny]
                   T__'8712'_'183'__10 T__'8712'_'183'__10 |
    C__'62''62''61'__130 AgdaAny [AgdaAny] [AgdaAny]
                         T__'8712'_'183'__10 T__'8712'_'183'__10 |
    C_nonempty_146 T__'8712'_'183'__10 | C_cast_164 T__'8712'_'183'__10
-- TotalParserCombinators.Semantics.[_-_]_⊛_
d_'91'_'45'_'93'_'8859'__188 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10 -> T__'8712'_'183'__10
d_'91'_'45'_'93'_'8859'__188 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                             ~v10 v11 v12
  = du_'91'_'45'_'93'_'8859'__188 v3 v4 v5 v6 v11 v12
du_'91'_'45'_'93'_'8859'__188 ::
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10 -> T__'8712'_'183'__10
du_'91'_'45'_'93'_'8859'__188 v0 v1 v2 v3 v4 v5
  = coe C__'8859'__102 v0 v1 v2 v3 v4 v5
-- TotalParserCombinators.Semantics.[_-_]_>>=_
d_'91'_'45'_'93'_'62''62''61'__222 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10 -> T__'8712'_'183'__10
d_'91'_'45'_'93'_'62''62''61'__222 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 ~v7 ~v8
                                   ~v9 ~v10 v11 v12
  = du_'91'_'45'_'93'_'62''62''61'__222 v3 v5 v6 v11 v12
du_'91'_'45'_'93'_'62''62''61'__222 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10 -> T__'8712'_'183'__10
du_'91'_'45'_'93'_'62''62''61'__222 v0 v1 v2 v3 v4
  = coe C__'62''62''61'__130 v0 v1 v2 v3 v4
-- TotalParserCombinators.Semantics._∼[_]_
d__'8764''91'_'93'__240 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8764''91'_'93'__240 = erased
-- TotalParserCombinators.Semantics._≈_
d__'8776'__260 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8776'__260 = erased
-- TotalParserCombinators.Semantics._≅_
d__'8773'__274 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8773'__274 = erased
-- TotalParserCombinators.Semantics._≲_
d__'8818'__288 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8818'__288 = erased
-- TotalParserCombinators.Semantics._≲→_
d__'8818''8594'__302 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8818''8594'__302 = erased
-- TotalParserCombinators.Semantics.≲⇔≲→
d_'8818''8660''8818''8594'_324 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8818''8660''8818''8594'_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8818''8660''8818''8594'_324
du_'8818''8660''8818''8594'_324 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8818''8660''8818''8594'_324
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v0 v1 v2 ->
            MAlonzo.Code.Function.Bundles.d_to_720 (coe v0 v1 v2)))
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'10230'_2266 (coe v0 v1 v2)))
-- TotalParserCombinators.Semantics.≈⇔≲≳
d_'8776''8660''8818''8819'_350 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8776''8660''8818''8819'_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8776''8660''8818''8819'_350
du_'8776''8660''8818''8819'_350 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8776''8660''8818''8819'_350
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v1 v2 ->
                    coe
                      MAlonzo.Code.Function.Bundles.du_mk'10230'_2266
                      (coe MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0 v1 v2))))
              (coe
                 (\ v1 v2 ->
                    coe
                      MAlonzo.Code.Function.Bundles.du_mk'10230'_2266
                      (coe MAlonzo.Code.Function.Bundles.d_from_1726 (coe v0 v1 v2))))))
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
              (coe
                 MAlonzo.Code.Function.Bundles.d_to_720
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v0 v1 v2))
              (coe
                 MAlonzo.Code.Function.Bundles.d_to_720
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v0 v1 v2))))
-- TotalParserCombinators.Semantics.≅⇒≈
d_'8773''8658''8776'_380 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8773''8658''8776'_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8773''8658''8776'_380 v6 v7 v8
du_'8773''8658''8776'_380 ::
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8773''8658''8776'_380 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
      (coe v0 v1 v2)
-- TotalParserCombinators.Semantics.¬≈⇒≅
d_'172''8776''8658''8773'_396 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''8776''8658''8773'_396 = erased
-- TotalParserCombinators.Semantics._.p₁
d_p'8321'_404 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_p'8321'_404 ~v0 = du_p'8321'_404
du_p'8321'_404 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_p'8321'_404
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
         erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Effect.Applicative.d_pure_32
         (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
            (coe
               MAlonzo.Code.Effect.Monad.d_rawMonad_214
               (coe
                  MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                  (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
         erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- TotalParserCombinators.Semantics._.p₂
d_p'8322'_406 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_p'8322'_406 ~v0 = du_p'8322'_406
du_p'8322'_406 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_p'8322'_406
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- TotalParserCombinators.Semantics._.p₁≲p₂
d_p'8321''8818'p'8322'_408 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10
d_p'8321''8818'p'8322'_408 ~v0 ~v1 ~v2 v3
  = du_p'8321''8818'p'8322'_408 v3
du_p'8321''8818'p'8322'_408 ::
  T__'8712'_'183'__10 -> T__'8712'_'183'__10
du_p'8321''8818'p'8322'_408 v0
  = case coe v0 of
      C_'8739''45'left_40 v8 -> coe seq (coe v8) (coe C_return_18)
      C_'8739''45'right_58 v8 -> coe seq (coe v8) (coe C_return_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Semantics._.p₁≅p₂
d_p'8321''8773'p'8322'_410 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_p'8321''8773'p'8322'_410 v0 ~v1 v2
  = du_p'8321''8773'p'8322'_410 v0 v2
du_p'8321''8773'p'8322'_410 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_p'8321''8773'p'8322'_410 v0 v1
  = coe
      v0 erased erased
      (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
       coe
         (coe
            MAlonzo.Code.Effect.Choice.du__'8739'__24
            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
      (coe
         MAlonzo.Code.Effect.Applicative.d_pure_32
         (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
            (coe
               MAlonzo.Code.Effect.Monad.d_rawMonad_214
               (coe
                  MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                  (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
         erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe du_p'8321'_404) (coe du_p'8322'_406)
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
           (coe du_p'8321''8818'p'8322'_408) (coe C_'8739''45'left_40))
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v1
-- TotalParserCombinators.Semantics._.lemma
d_lemma_420 ::
  (() ->
   () ->
   [AgdaAny] ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   (AgdaAny ->
    [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  T__'8712'_'183'__10 ->
  T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_420 = erased
-- TotalParserCombinators.Semantics.cast∈
d_cast'8712'_446 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T__'8712'_'183'__10 -> T__'8712'_'183'__10
d_cast'8712'_446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 v12
  = du_cast'8712'_446 v12
du_cast'8712'_446 :: T__'8712'_'183'__10 -> T__'8712'_'183'__10
du_cast'8712'_446 v0 = coe v0
