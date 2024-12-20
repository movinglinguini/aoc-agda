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

module MAlonzo.Code.TotalParserCombinators.CoinductiveEquality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Corollaries
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.InitialBag
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.CoinductiveEquality._∼[_]c_
d__'8764''91'_'93'c__18 a0 a1 a2 a3 a4 a5 a6 = ()
data T__'8764''91'_'93'c__18
  = C__'8759'__40 (AgdaAny -> AgdaAny)
                  (AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'c__18)
-- TotalParserCombinators.CoinductiveEquality.sound
d_sound_56 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T__'8764''91'_'93'c__18 -> AgdaAny -> [AgdaAny] -> AgdaAny
d_sound_56 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_sound_56 v0 v5 v6 v7 v8 v9
du_sound_56 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T__'8764''91'_'93'c__18 -> AgdaAny -> [AgdaAny] -> AgdaAny
du_sound_56 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      C__'8759'__40 v6 v7
        -> case coe v5 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                    (\ v8 v9 v10 ->
                       coe
                         MAlonzo.Code.Function.Base.du__'8728''8242'__216
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (coe v0)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v8 v9 v10 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                          (\ v8 v9 v10 ->
                             coe
                               MAlonzo.Code.Function.Base.du__'8728''8242'__216
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                  (coe v0))
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                  (coe v0)))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe v0))
                             erased)
                          (coe
                             MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                             (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.InitialBag.du_correct_662
                                (coe v4) (coe v2))))
                       (coe v6 v4))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.InitialBag.du_correct_662
                       (coe v4) (coe v1))
             (:) v8 v9
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                    (\ v10 v11 v12 ->
                       coe
                         MAlonzo.Code.Function.Base.du__'8728''8242'__216
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (coe v0)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v10 v11 v12 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                          (\ v10 v11 v12 ->
                             coe
                               MAlonzo.Code.Function.Base.du__'8728''8242'__216
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                  (coe v0))
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                  (coe v0)))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (\ v10 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe v0))
                             erased)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Corollaries.du_correct_20
                             (coe v4) (coe v9) (coe v8) (coe v2)))
                       (coe
                          du_sound_56 (coe v0)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v8) (coe v1))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v8) (coe v2))
                          (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7 v8))
                          (coe v4) (coe v9)))
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Corollaries.du_correct_20
                          (coe v4) (coe v9) (coe v8) (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.CoinductiveEquality.complete
d_complete_104 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> T__'8764''91'_'93'c__18
d_complete_104 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_complete_104 v0 v5 v6 v7
du_complete_104 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> T__'8764''91'_'93'c__18
du_complete_104 v0 v1 v2 v3
  = coe
      C__'8759'__40
      (coe
         MAlonzo.Code.TotalParserCombinators.InitialBag.du_cong_684 (coe v0)
         (coe v1) (coe v2) (coe v3))
      (coe du_'9839''45'47_19097 (coe v0) (coe v1) (coe v2) (coe v3))
-- TotalParserCombinators.CoinductiveEquality.correct
d_correct_126 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_correct_126 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_correct_126 v0 v5 v6
du_correct_126 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_correct_126 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe du_sound_56 (coe v0) (coe v1) (coe v2))
      (coe du_complete_104 (coe v0) (coe v1) (coe v2))
-- TotalParserCombinators.CoinductiveEquality._.♯-47
d_'9839''45'47_19097 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'c__18
d_'9839''45'47_19097 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'9839''45'47_19097 v0 v5 v6 v7 v8
du_'9839''45'47_19097 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'c__18
du_'9839''45'47_19097 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_complete_104 (coe v0)
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v4) (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v4) (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Corollaries.du_cong_62
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
