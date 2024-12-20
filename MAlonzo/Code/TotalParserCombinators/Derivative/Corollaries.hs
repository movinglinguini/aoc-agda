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

module MAlonzo.Code.TotalParserCombinators.Derivative.Corollaries where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics

-- TotalParserCombinators.Derivative.Corollaries.correct
d_correct_20 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_20 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_correct_20 v3 v4 v5 v6
du_correct_20 ::
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_20 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_sound_26
         (coe v2) (coe v3))
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_complete_242
         (coe v0) (coe v1) (coe v2) (coe v3))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.Derivative.Corollaries.mono
d_mono_42 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_mono_42 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_mono_42 v4 v5 v6 v7 v8 v9
du_mono_42 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
du_mono_42 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_complete_242
           (coe v6) (coe v7) (coe v0) (coe v2)
           (coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
              v3 v6
              (coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v7))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_sound_26
                 (coe v0) (coe v1) (coe v8))))
      v4 v5
-- TotalParserCombinators.Derivative.Corollaries.cong
d_cong_62 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
d_cong_62 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_cong_62 v0 v5 v6 v7 v8 v9 v10
du_cong_62 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny
du_cong_62 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
      (\ v7 v8 v9 ->
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
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe v0))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
            (\ v7 v8 v9 ->
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
               (\ v7 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe v0))
               erased)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe du_correct_20 (coe v5) (coe v6) (coe v4) (coe v2))))
         (coe
            v3 v5
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v6))))
      (coe du_correct_20 (coe v5) (coe v6) (coe v4) (coe v1))
