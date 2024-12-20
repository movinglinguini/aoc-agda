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

module MAlonzo.Code.TotalParserCombinators.Laws.Derivative where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.Derivative.D-return⋆
d_D'45'return'8902'_90 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45'return'8902'_90 ~v0 ~v1 v2 v3
  = du_D'45'return'8902'_90 v2 v3
du_D'45'return'8902'_90 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_D'45'return'8902'_90 v0 v1
  = case coe v1 of
      []
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      (:) v2 v3
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                (coe v0)
                (coe
                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                   (coe v3)))
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                (coe v0)
                (coe
                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                   (coe v3)))
             (coe
                MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                (coe
                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                   (coe v0)
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                      (coe v3)))
                (coe
                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                   (coe v0)
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                      (coe v3))))
             (coe
                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                 coe
                   (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                    coe
                      (coe
                         MAlonzo.Code.Effect.Empty.du_'8709'_24
                         (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
                (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                (coe du_D'45'return'8902'_90 (coe v0) (coe v3))
                (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.Derivative.D-⊛
d_D'45''8859'_114 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45''8859'_114 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_D'45''8859'_114 v3 v4 v5 v6 v7
du_D'45''8859'_114 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_D'45''8859'_114 v0 v1 v2 v3 v4
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                     coe
                       (coe
                          MAlonzo.Code.Effect.Choice.du__'8739'__24
                          (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3)))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2) (coe v4))))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2) (coe v4))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v2)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                          v4)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v0
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2) (coe v4)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                             (coe v5))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v2) (coe v4))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                          (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                    (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                     coe
                       (coe
                          MAlonzo.Code.Effect.Choice.du__'8739'__24
                          (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2) (coe v3))))
                             (coe v1))
                          (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v8 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v7) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v8)))))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2) (coe v3))))
                          (coe v1))
                       (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2) (coe v3)))
                          v1
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v2) (coe v3))
                          (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2) (coe v3))))
                             (coe v1))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2) (coe v3)))
                             v1
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v2) (coe v3))
                             (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                       (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (coe
                             MAlonzo.Code.Effect.Choice.du__'8739'__24
                             (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v2) (coe v3))))
                                (coe v1))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v4)))))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2) (coe v3))))
                             (coe v1))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2) (coe v3)))
                             v1
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v2) (coe v3))
                             (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4))))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                             (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                             (coe
                                du_left'45'zero'45''8859'_126
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                      (coe v4))))))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v2)
                          (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                       (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                       (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (coe
                             MAlonzo.Code.Effect.Choice.du__'8739'__24
                             (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v2)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v3)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                              coe
                                (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3)))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                          (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v6 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v5) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v6)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                             (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                          (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                          (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v2)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v3)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2)
                                   (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                                (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                          (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Choice.du__'8739'__24
                                (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v2)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                               (coe v3)))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v2)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v4)))))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v2)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v3)))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v4)))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2)
                                   (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                                (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v4))))
                                (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                (coe
                                   du_left'45'zero'45''8859'_126
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v4)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v4))))))
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.Derivative.left-zero-⊛
d_left'45'zero'45''8859'_126 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'zero'45''8859'_126 ~v0 ~v1 ~v2 v3 v4
  = du_left'45'zero'45''8859'_126 v3 v4
du_left'45'zero'45''8859'_126 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'zero'45''8859'_126 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2680
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe
                    MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeMonoid'737''46'constructor_34899
                    (coe
                       MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10399
                       (coe
                          MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1865
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                          (\ v2 v3 v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v2 v3 v6 v7 v8))
                       (coe
                          (\ v2 v3 v4 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
                                  (coe v4)))))
                    (coe
                       (\ v2 v3 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v2 v3 v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v2) (coe v3))))) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5))
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                         coe
                           (let v8 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v8))
                                 (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v9) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
                                 v0)))))))))
      (coe du_'9839''45'27_36771 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.Derivative.right-zero-⊛
d_right'45'zero'45''8859'_170 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'zero'45''8859'_170 ~v0 ~v1 ~v2 v3 v4
  = du_right'45'zero'45''8859'_170 v3 v4
du_right'45'zero'45''8859'_170 ::
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'zero'45''8859'_170 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2680
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe
                    MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeMonoid'737''46'constructor_34899
                    (coe
                       MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10399
                       (coe
                          MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1865
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                          (\ v2 v3 v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v2 v3 v6 v7 v8))
                       (coe
                          (\ v2 v3 v4 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
                                  (coe v4)))))
                    (coe
                       (\ v2 v3 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v2 v3 v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v2) (coe v3))))) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5))
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                         coe
                           (let v8 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v8)) v0
                                 (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v9) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                             (coe v10))))))))))))))
      (coe du_'9839''45'34_44737 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.Derivative.D-return-⊛
d_D'45'return'45''8859'_192 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45'return'45''8859'_192 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_D'45'return'45''8859'_192 v3 v4 v5 v6
du_D'45'return'45''8859'_192 ::
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_D'45'return'45''8859'_192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
       coe
         (coe
            MAlonzo.Code.Effect.Choice.du__'8739'__24
            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v4))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v1)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        v3))))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     v3))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v1)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               v3))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     v3)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v1)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  v3))))
      (coe
         du_D'45''8859'_114
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v1)
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)
         (coe v3))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v4))
               (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v6 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v6)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v1) (coe v3))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                     (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3))))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3)))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v1) (coe v3))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
            (coe du_left'45'zero'45''8859'_126 (coe v0) (coe v3))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                  (coe
                     MAlonzo.Code.Effect.Applicative.d_pure_32
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                        (coe
                           MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                     erased v2)
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2))
               (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v1) (coe v3)))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v1) (coe v3))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v1) (coe v3)))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v1) (coe v3))))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.Derivative.D->>=
d_D'45''62''62''61'_220 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45''62''62''61'_220 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_D'45''62''62''61'_220 v3 v4 v5 v6 v7
du_D'45''62''62''61'_220 ::
  Maybe [AgdaAny] ->
  AgdaAny ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_D'45''62''62''61'_220 v0 v1 v2 v3 v4
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                     coe
                       (coe
                          MAlonzo.Code.Effect.Choice.du__'8739'__24
                          (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe (\ v7 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_foldr_216
                             (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             (coe
                                MAlonzo.Code.Data.List.Base.du_map_22
                                (coe
                                   (\ v7 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v1) (coe v4 v7)))
                                (coe v5)))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_foldr_216
                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe
                                (\ v6 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                     (coe v1) (coe v4 v6)))
                             (coe v5)))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                          v4)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v0
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                (\ v6 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                     (coe v1) (coe v4 v6))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                             (coe v5))
                          (\ v6 ->
                             coe
                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                               (coe v1) (coe v4 v6))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                          (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                          (coe
                             (\ v6 ->
                                coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                    (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                     coe
                       (coe
                          MAlonzo.Code.Effect.Choice.du__'8739'__24
                          (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1) (coe v3)))
                             (coe v2))
                          (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v8 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v7) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v8)))))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1) (coe v3)))
                          (coe v2))
                       (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1) (coe v3)))
                          v2
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v1) (coe v3))
                          (\ v6 ->
                             MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v6)))
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1) (coe v3)))
                             (coe v2))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1) (coe v3)))
                             v2
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v1) (coe v3))
                             (\ v6 ->
                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v6)))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                       (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (coe
                             MAlonzo.Code.Effect.Choice.du__'8739'__24
                             (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1) (coe v3)))
                                (coe v2))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v7 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                              (coe v4 v7))))))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1) (coe v3)))
                             (coe v2))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                           (coe v4 v6))))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1) (coe v3)))
                             v2
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v1) (coe v3))
                             (\ v6 ->
                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v6)))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                           (coe v4 v6)))))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                  (coe v1)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                     (coe v4 v6)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                             (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                             (coe
                                du_left'45'zero'45''62''62''61'_234
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                           (coe v4 v6))))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                        (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                           (coe v4 v6)))))))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v1)
                          (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                       (\ v5 ->
                          MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v5)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                       (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                       (coe
                          (\ v5 ->
                             coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                       (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (coe
                             MAlonzo.Code.Effect.Choice.du__'8739'__24
                             (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                              coe
                                (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                          (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v6 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v5) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v6)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v1)
                                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                             (\ v5 ->
                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v5)))
                          (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                          (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v1)
                                   (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                                (\ v5 ->
                                   MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v5)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                          (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Choice.du__'8739'__24
                                (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v3))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v6 ->
                                            coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v6 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                              (coe v1)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                 (coe v4 v6))))))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v5 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                              (coe v4 v5))))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                         (coe v3))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v1)
                                   (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3)))
                                (\ v5 ->
                                   MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v5)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v5 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                              (coe v4 v5)))))
                                (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                (\ v5 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                     (coe v1)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                        (coe v4 v5)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                (coe
                                   du_left'45'zero'45''62''62''61'_234
                                   (coe
                                      (\ v5 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                              (coe v4 v5))))
                                   (coe
                                      (\ v5 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                              (coe v4 v5)))))))
                          (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.Derivative.left-zero->>=
d_left'45'zero'45''62''62''61'_234 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'zero'45''62''62''61'_234 ~v0 ~v1 ~v2 v3 v4
  = du_left'45'zero'45''62''62''61'_234 v3 v4
du_left'45'zero'45''62''62''61'_234 ::
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'zero'45''62''62''61'_234 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2680
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe
                    MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeMonoid'737''46'constructor_34899
                    (coe
                       MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10399
                       (coe
                          MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1865
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                          (\ v2 v3 v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v2 v3 v6 v7 v8))
                       (coe
                          (\ v2 v3 v4 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
                                  (coe v4)))))
                    (coe
                       (\ v2 v3 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v2 v3 v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v2) (coe v3))))) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5))
                     (coe
                        MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                        (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                        erased erased
                        (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (let v7 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Empty.du_'8709'_24
                                 (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))))
                        v0))))))
      (coe du_'9839''45'83_105109 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.Derivative.right-zero->>=
d_right'45'zero'45''62''62''61'_302 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'zero'45''62''62''61'_302 ~v0 ~v1 ~v2 v3 v4
  = du_right'45'zero'45''62''62''61'_302 v3 v4
du_right'45'zero'45''62''62''61'_302 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'zero'45''62''62''61'_302 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.Biased.du_isCommutativeMonoid_2680
                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                 (coe
                    MAlonzo.Code.Algebra.Structures.Biased.C_IsCommutativeMonoid'737''46'constructor_34899
                    (coe
                       MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10399
                       (coe
                          MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1865
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                          (\ v2 v3 v4 v5 v6 v7 v8 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v2 v3 v6 v7 v8))
                       (coe
                          (\ v2 v3 v4 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3))
                                  (coe v4)))))
                    (coe
                       (\ v2 v3 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v2 v3 v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v2) (coe v3))))) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5))
                     (coe
                        MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                        (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                        erased erased v0
                        (let v6
                               = let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                 coe
                                   (let v7
                                          = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v6) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Effect.Empty.du_'8709'_24
                                         (coe
                                            MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v7)))) in
                         coe (\ v7 -> v6))))))))
      (coe du_'9839''45'90_113923 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.Derivative._.♯-27
d_'9839''45'27_36771 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'27_36771 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'27_36771 v3 v4 v5
du_'9839''45'27_36771 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'27_36771 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           v1))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        v1))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                  v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     v1))))
         (coe
            du_D'45''8859'_114
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2)
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
            (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe du_left'45'zero'45''8859'_126 (coe v0) (coe v1))
               (coe
                  du_left'45'zero'45''8859'_126
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2) (coe v1))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.Derivative._.♯-34
d_'9839''45'34_44737 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'34_44737 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'34_44737 v3 v4 v5
du_'9839''45'34_44737 ::
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'34_44737 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              v1))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           v1))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
         (coe
            du_D'45''8859'_114
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            (coe v2) (coe v1)
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_right'45'zero'45''8859'_170
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2) (coe v1)))
               (coe
                  du_right'45'zero'45''8859'_170 (coe v0)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.Derivative._.♯-83
d_'9839''45'83_105109 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'83_105109 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'83_105109 v3 v4 v5
du_'9839''45'83_105109 ::
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'83_105109 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe v1 v4))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v2)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe v1 v3))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
               (\ v3 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                    (coe v1 v3)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v2)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe v1 v3)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (\ v3 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v2)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                       (coe v1 v3)))))
         (coe
            du_D'45''62''62''61'_220
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
            (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe du_left'45'zero'45''62''62''61'_234 (coe v0) (coe v1))
               (coe
                  du_left'45'zero'45''62''62''61'_234
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v2) (coe v1 v3)))
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v2) (coe v1 v3)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.Derivative._.♯-90
d_'9839''45'90_113923 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'90_113923 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'90_113923 v3 v4 v5
du_'9839''45'90_113923 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'90_113923 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           v1)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v4 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v2)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     v1))
               (\ v3 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                    (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v2)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (\ v3 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v2)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))))
         (coe
            du_D'45''62''62''61'_220
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe v1)
            (coe
               (\ v3 ->
                  coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_right'45'zero'45''62''62''61'_302
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2) (coe v1)))
               (coe
                  du_right'45'zero'45''62''62''61'_302 (coe v0)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
