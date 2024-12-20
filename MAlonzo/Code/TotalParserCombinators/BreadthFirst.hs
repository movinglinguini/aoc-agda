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

module MAlonzo.Code.TotalParserCombinators.BreadthFirst where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Congruence.Sound
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete
import qualified MAlonzo.Code.TotalParserCombinators.InitialBag
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics
import qualified MAlonzo.Code.TotalParserCombinators.Simplification

-- TotalParserCombinators.BreadthFirst.Parse.parse
d_parse_28 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
d_parse_28 ~v0 v1 ~v2 v3 v4 v5 v6 = du_parse_28 v1 v3 v4 v5 v6
du_parse_28 ::
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
du_parse_28 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe v2
      (:) v5 v6
        -> coe
             du_parse_28 (coe v0) erased
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                (coe v5)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v1 v2 v3)))
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                (coe v5)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v1 v2 v3)))
             (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.BreadthFirst.Parse.f-correct′
d_f'45'correct'8242'_46 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_f'45'correct'8242'_46 ~v0 v1 v2 v3 v4 v5
  = du_f'45'correct'8242'_46 v1 v2 v3 v4 v5
du_f'45'correct'8242'_46 ::
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_f'45'correct'8242'_46 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.Sound.du_sound_622
      (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0 v2 v3 v4))
      (coe v3)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v4))
      (coe v4) (coe v1 v2 v3 v4)
-- TotalParserCombinators.BreadthFirst.Parse.sound
d_sound_58 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_sound_58 ~v0 v1 v2 v3 v4 v5 v6 v7 v8
  = du_sound_58 v1 v2 v3 v4 v5 v6 v7 v8
du_sound_58 ::
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_sound_58 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      []
        -> coe
             MAlonzo.Code.TotalParserCombinators.InitialBag.du_sound_120
             (coe v4) (coe v5) (coe v7)
      (:) v8 v9
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1972
             (coe du_f'45'correct'8242'_46 v0 v1 erased v3 v5 v4 v6)
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_sound_26
                (coe v8)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5))
                (coe
                   du_sound_58 (coe v0) (coe v1) erased
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                      (coe v8)
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5)))
                   (coe v4)
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                      (coe v8)
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5)))
                   (coe v9) (coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.BreadthFirst.Parse.complete
d_complete_78 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_complete_78 ~v0 v1 v2 v3 v4 v5 v6 v7 v8
  = du_complete_78 v1 v2 v3 v4 v5 v6 v7 v8
du_complete_78 ::
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_complete_78 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      []
        -> coe
             MAlonzo.Code.TotalParserCombinators.InitialBag.du_complete_34
             (coe v4) (coe v5) (coe v7)
      (:) v8 v9
        -> coe
             du_complete_78 (coe v0) (coe v1) erased
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                (coe v8)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5)))
             (coe v4)
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                (coe v8)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5)))
             (coe v9)
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete.du_complete_242
                (coe v4) (coe v9) (coe v8)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0 v2 v3 v5))
                (coe
                   MAlonzo.Code.Function.Bundles.d_from_1974
                   (coe du_f'45'correct'8242'_46 v0 v1 erased v3 v5 v4 v6) v7))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.BreadthFirst.Parse.complete∘sound
d_complete'8728'sound_100 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_complete'8728'sound_100 = erased
-- TotalParserCombinators.BreadthFirst.Parse.sound∘complete
d_sound'8728'complete_134 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete_134 = erased
-- TotalParserCombinators.BreadthFirst.Parse.correct
d_correct_162 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_162 ~v0 v1 v2 ~v3 v4 v5 v6 v7
  = du_correct_162 v1 v2 v4 v5 v6 v7
du_correct_162 ::
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_162 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe
         du_complete_78 (coe v0) (coe v1) erased (coe v2) (coe v3) (coe v5)
         (coe v4))
      (coe
         du_sound_58 (coe v0) (coe v1) erased (coe v2) (coe v3) (coe v5)
         (coe v4))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.BreadthFirst.parse
d_parse_178 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
d_parse_178 ~v0 ~v1 v2 = du_parse_178 v2
du_parse_178 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
du_parse_178 v0
  = coe
      du_parse_28
      (coe (\ v1 -> coe MAlonzo.Code.Data.Product.Base.du_'45''44'__92))
      erased (coe v0)
-- TotalParserCombinators.BreadthFirst.parse-correct
d_parse'45'correct_192 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_parse'45'correct_192 ~v0 ~v1 v2 v3 v4 v5
  = du_parse'45'correct_192 v2 v3 v4 v5
du_parse'45'correct_192 ::
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_parse'45'correct_192 v0 v1 v2 v3
  = coe
      du_correct_162
      (coe (\ v4 -> coe MAlonzo.Code.Data.Product.Base.du_'45''44'__92))
      (\ v4 v5 v6 ->
         coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
      (coe v0) (coe v1) (coe v2) (coe v3)
-- TotalParserCombinators.BreadthFirst.parse-with-simplification
d_parse'45'with'45'simplification_200 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
d_parse'45'with'45'simplification_200 ~v0 ~v1 v2
  = du_parse'45'with'45'simplification_200 v2
du_parse'45'with'45'simplification_200 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] -> [AgdaAny]
du_parse'45'with'45'simplification_200 v0
  = coe
      du_parse_28
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
              (let v4
                     = coe
                         MAlonzo.Code.TotalParserCombinators.Simplification.du_simplify'8321'_120
                         (coe v2) (coe v3) in
               coe
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Simplification.d_bag_104
                    (coe v4)))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Simplification.du_simplify_746
                 (coe v2) (coe v3))))
      erased (coe v0)
-- TotalParserCombinators.BreadthFirst.parse-with-simplification-correct
d_parse'45'with'45'simplification'45'correct_216 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_parse'45'with'45'simplification'45'correct_216 ~v0 ~v1 v2 v3 v4
                                                 v5
  = du_parse'45'with'45'simplification'45'correct_216 v2 v3 v4 v5
du_parse'45'with'45'simplification'45'correct_216 ::
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_parse'45'with'45'simplification'45'correct_216 v0 v1 v2 v3
  = coe
      du_correct_162
      (coe
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.TotalParserCombinators.Simplification.d_bag_104
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Simplification.du_simplify'8321'_120
                    (coe v5) (coe v6)))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Simplification.du_simplify_746
                 (coe v5) (coe v6))))
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Simplification.du_correct_862
           v5 v6)
      (coe v0) (coe v1) (coe v2) (coe v3)
-- TotalParserCombinators.BreadthFirst.parse-inefficient
d_parse'45'inefficient_226 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_parse'45'inefficient_226 ~v0 ~v1 = du_parse'45'inefficient_226
du_parse'45'inefficient_226 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_parse'45'inefficient_226
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe (\ v0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
         (\ v0 ->
            coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
      erased
