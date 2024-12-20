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

module MAlonzo.Code.TotalParserCombinators.Simplification where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Laws
import qualified MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid
import qualified MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Derivative
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Monad
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Simplification.Simplify₁
d_Simplify'8321'_88 a0 a1 a2 a3 = ()
data T_Simplify'8321'_88
  = C_result_110 [AgdaAny]
                 MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
                 MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
-- TotalParserCombinators.Simplification.Simplify₁.bag
d_bag_104 :: T_Simplify'8321'_88 -> [AgdaAny]
d_bag_104 v0
  = case coe v0 of
      C_result_110 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.Simplify₁.parser
d_parser_106 ::
  T_Simplify'8321'_88 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_parser_106 v0
  = case coe v0 of
      C_result_110 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.Simplify₁.correct
d_correct_108 ::
  T_Simplify'8321'_88 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct_108 v0
  = case coe v0 of
      C_result_110 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.simplify₁
d_simplify'8321'_120 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T_Simplify'8321'_88
d_simplify'8321'_120 ~v0 ~v1 v2 v3 = du_simplify'8321'_120 v2 v3
du_simplify'8321'_120 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T_Simplify'8321'_88
du_simplify'8321'_120 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3
        -> coe
             C_result_110
             (coe
                MAlonzo.Code.Effect.Applicative.d_pure_32
                (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                   (coe
                      MAlonzo.Code.Effect.Monad.d_rawMonad_214
                      (coe
                         MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                         (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                erased v3)
             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3)
             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
      MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
        -> coe
             C_result_110
             (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
              coe
                (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                 coe
                   (coe
                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe
             C_result_110
             (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
              coe
                (let v3 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v2) in
                 coe
                   (coe
                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v3)))))
             (coe v1)
             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v3 v4 v5 v6
        -> let v7 = coe du_simplify'8321'_120 (coe v3) (coe v5) in
           coe
             (let v8 = coe du_simplify'8321'_120 (coe v4) (coe v6) in
              coe
                (case coe v7 of
                   C_result_110 v9 v10 v11
                     -> let v12
                              = case coe v8 of
                                  C_result_110 v12 v13 v14
                                    -> let v15
                                             = coe
                                                 C_result_110
                                                 (let v15
                                                        = coe
                                                            MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                       (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                          (coe v15))
                                                       v9 v12))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                    v9 v12 v10 v13)
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                    (let v15
                                                           = coe
                                                               MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                          (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                             (coe v15))
                                                          v9 v12))
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                       v9 v12 v10 v13)
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                       v11 v14)
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)) in
                                       coe
                                         (case coe v13 of
                                            MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                                              -> coe
                                                   C_result_110 (coe v9) (coe v10)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                      (let v17
                                                             = coe
                                                                 MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                            (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                               (coe v17))
                                                            v9
                                                            (let v18
                                                                   = coe
                                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                             coe
                                                               (let v19
                                                                      = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                                          (coe v18) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                                     (coe
                                                                        MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                                        (coe v19)))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                         v9
                                                         (let v17
                                                                = coe
                                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                          coe
                                                            (let v18
                                                                   = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                                       (coe v17) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                                  (coe
                                                                     MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                                     (coe v18)))))
                                                         v10
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                         v11 v14)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                         v9 v10
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                                                            (coe v9) (coe v10))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                            _ -> coe v15)
                                  _ -> MAlonzo.RTE.mazUnreachableError in
                        coe
                          (case coe v10 of
                             MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                               -> case coe v8 of
                                    C_result_110 v14 v15 v16
                                      -> coe
                                           C_result_110 (coe v14) (coe v15)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                              (let v17
                                                     = coe
                                                         MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                    (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                       (coe v17))
                                                    (let v18
                                                           = coe
                                                               MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                     coe
                                                       (let v19
                                                              = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                                  (coe v18) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                             (coe
                                                                MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                                (coe v19)))))
                                                    v14))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                 (let v17
                                                        = coe
                                                            MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                  coe
                                                    (let v18
                                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                               (coe v17) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                          (coe
                                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                             (coe v18)))))
                                                 v14
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                 v15)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                 v11 v16)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                 v14 v15
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                                                    (coe v14) (coe v15))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v15 v16 v17 v18
                               -> case coe v8 of
                                    C_result_110 v19 v20 v21
                                      -> case coe v20 of
                                           MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                                             -> coe
                                                  C_result_110 (coe v9)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                     v15 v16 v17 v18)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                     (let v23
                                                            = coe
                                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                              (coe v23))
                                                           v9
                                                           (let v24
                                                                  = coe
                                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                            coe
                                                              (let v25
                                                                     = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                                         (coe v24) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                                    (coe
                                                                       MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                                       (coe v25)))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                        v9
                                                        (let v23
                                                               = coe
                                                                   MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                         coe
                                                           (let v24
                                                                  = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                                      (coe v23) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                                 (coe
                                                                    MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                                    (coe v24)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v15 v16 v17 v18)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                        v11 v21)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                        v9
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v15 v16 v17 v18)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                                                           (coe v9)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                              v15 v16 v17 v18))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v24 v25 v26 v27
                                             -> coe
                                                  C_result_110
                                                  (coe
                                                     d_bag_104
                                                     (coe
                                                        du_helper_280 (coe v15) (coe v24) (coe v16)
                                                        (coe v25) (coe v17) (coe v18) (coe v26)
                                                        (coe v27)))
                                                  (coe
                                                     d_parser_106
                                                     (coe
                                                        du_helper_280 (coe v15) (coe v24) (coe v16)
                                                        (coe v25) (coe v17) (coe v18) (coe v26)
                                                        (coe v27)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                     (let v28
                                                            = coe
                                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                              (coe v28))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                              (coe v15) (coe v16))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                              (coe v24) (coe v25))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                           (coe v15) (coe v16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                           (coe v24) (coe v25))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v15 v16 v17 v18)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v24 v25 v26 v27))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                        v11 v21)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                        (d_bag_104
                                                           (coe
                                                              du_helper_280 (coe v15) (coe v24)
                                                              (coe v16) (coe v25) (coe v17)
                                                              (coe v18) (coe v26) (coe v27)))
                                                        (d_parser_106
                                                           (coe
                                                              du_helper_280 (coe v15) (coe v24)
                                                              (coe v16) (coe v25) (coe v17)
                                                              (coe v18) (coe v26) (coe v27)))
                                                        (d_correct_108
                                                           (coe
                                                              du_helper_280 (coe v15) (coe v24)
                                                              (coe v16) (coe v25) (coe v17)
                                                              (coe v18) (coe v26) (coe v27)))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                           _ -> coe v12
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> coe v12)
                   _ -> MAlonzo.RTE.mazUnreachableError))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v4 v5 v6
        -> let v7 = coe du_simplify'8321'_120 (coe v4) (coe v6) in
           coe
             (case coe v7 of
                C_result_110 v8 v9 v10
                  -> let v11
                           = coe
                               C_result_110
                               (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v5) (coe v8))
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v8
                                  v5 v9)
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                  (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v5) (coe v8))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                     v8 v5 v9)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230
                                     v10)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)) in
                     coe
                       (case coe v9 of
                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v13
                            -> coe
                                 C_result_110
                                 (coe
                                    MAlonzo.Code.Effect.Applicative.d_pure_32
                                    (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                       (coe
                                          MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                             (coe
                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                    erased (coe v5 v13))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                    (coe v5 v13))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
                                       (coe
                                          MAlonzo.Code.Effect.Applicative.d_pure_32
                                          (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                          erased v13))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                       (coe
                                          MAlonzo.Code.Effect.Applicative.d_pure_32
                                          (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                          erased v13)
                                       v5
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                          v13))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230
                                       v10)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (coe
                                          MAlonzo.Code.Effect.Applicative.d_pure_32
                                          (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                          erased (coe v5 v13))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                          (coe v5 v13))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_homomorphism_142
                                          (coe v5) (coe v13))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                          MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                            -> coe
                                 C_result_110
                                 (let v13 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v14
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v13) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v14)))))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
                                       (let v13
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v14
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v13) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v14))))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                       (let v13
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v14
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v13) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v14)))))
                                       v5
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230
                                       v10)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (let v13
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v14
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v13) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v14)))))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_zero_136
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                          _ -> coe v11)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v4 v5 v6 v7
        -> coe
             du_helper_410 (coe v4) (coe v5) (coe v6) (coe v7)
             (coe
                du_simplify'8321''8734'_134
                (coe
                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v4))
                (coe v5) (coe v6))
             (coe
                du_simplify'8321''8734'_134
                (coe
                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                (coe v4) (coe v7))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v4 v5 v6 v7
        -> let v8
                 = coe
                     du_simplify'8321''8734'_134
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v4))
                     (coe v5) (coe v6) in
           coe
             (case coe v8 of
                C_result_110 v9 v10 v11
                  -> let v12
                           = case coe v5 of
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                 -> case coe v4 of
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                        -> coe
                                             C_result_110
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe v9))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      (\ v14 ->
                                                         d_bag_104
                                                           (coe
                                                              du_simplify'8321'_120
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe v5) (coe v14))
                                                              (coe v7 v14))))))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe v9))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      (\ v14 ->
                                                         d_bag_104
                                                           (coe
                                                              du_simplify'8321'_120
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe v5) (coe v14))
                                                              (coe v7 v14)))))
                                                v10
                                                (\ v14 ->
                                                   d_parser_106
                                                     (coe
                                                        du_simplify'8321'_120
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                           (coe v5) (coe v14))
                                                        (coe v7 v14))))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe
                                                         (\ v14 ->
                                                            d_bag_104
                                                              (coe
                                                                 du_simplify'8321'_120
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe v5) (coe v14))
                                                                 (coe v7 v14))))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe
                                                         (\ v14 ->
                                                            d_bag_104
                                                              (coe
                                                                 du_simplify'8321'_120
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe v5) (coe v14))
                                                                 (coe v7 v14)))))
                                                   v10
                                                   (\ v14 ->
                                                      d_parser_106
                                                        (coe
                                                           du_simplify'8321'_120
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                              (coe v5) (coe v14))
                                                           (coe v7 v14))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe
                                                         (\ v14 ->
                                                            d_bag_104
                                                              (coe
                                                                 du_simplify'8321'_120
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe v5) (coe v14))
                                                                 (coe v7 v14)))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v13))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe v11)
                                                   (coe
                                                      (\ v14 ->
                                                         d_correct_108
                                                           (coe
                                                              du_simplify'8321'_120
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe v5) (coe v14))
                                                              (coe v7 v14)))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                        -> coe
                                             C_result_110
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe v4) (coe v5))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                v4 v5 v10 v7)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   v10
                                                   (\ v13 ->
                                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                        (coe v7 v13)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v9))
                                                   (coe v11)
                                                   (coe
                                                      (\ v13 ->
                                                         coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                         (coe v12)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                         (coe v12))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe v12))
                                                         v10)
                                                      v7)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                         (coe v12))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                         (coe v12))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                         (coe v9))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                         (coe
                                                            MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.du_correct_338))
                                                      (coe
                                                         (\ v13 ->
                                                            coe
                                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 -> case coe v4 of
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                        -> coe
                                             C_result_110
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe v4) (coe v5))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                v4 v5 v6
                                                (\ v13 ->
                                                   coe
                                                     du_simplify'8321''45''91''93'_140
                                                     (coe v7 v13)))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                   v6
                                                   (\ v13 ->
                                                      coe
                                                        du_simplify'8321''45''91''93'_140
                                                        (coe v7 v13)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                      (coe v12))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                   (coe
                                                      (\ v13 ->
                                                         coe
                                                           du_simplify'8321''45''91''93''45'correct_148
                                                           (coe v7 v13))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                        -> coe
                                             C_result_110
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe v4) (coe v4))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                v4 v4 v6 v7)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError in
                     coe
                       (case coe v10 of
                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v14
                            -> let v15
                                     = coe
                                         du_simplify'8321''8734'_134
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v5) (coe v14))
                                         (coe v4) (coe v7 v14) in
                               coe
                                 (case coe v15 of
                                    C_result_110 v16 v17 v18
                                      -> coe
                                           C_result_110 (coe v16) (coe v17)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v14)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v14)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v5)))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                                    v14)
                                                 (\ v19 ->
                                                    coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      v4 (coe v7 v19)))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                 (coe v5)
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v5)))
                                                 (coe v4)
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v14)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                 (coe v11)
                                                 (coe
                                                    (\ v19 ->
                                                       coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                    (coe v5) (coe v14))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                    v4 (coe v7 v14))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v5))
                                                    (coe v14)
                                                    (coe
                                                       (\ v19 ->
                                                          coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v4 (coe v7 v19))))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                    v16 v17 v18
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                            -> coe
                                 C_result_110
                                 (let v14 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v15
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v14) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v15)))))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                             (coe v5))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                             (coe v5)))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                       (\ v14 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                            v4 (coe v7 v14)))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                       (coe v5)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                             (coe v5)))
                                       (coe v4)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe v11)
                                       (coe
                                          (\ v14 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (let v14
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v15
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v14) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v15)))))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''62''62''61'_234
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                             (coe v5))
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                  v4 (coe v7 v14))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                          _ -> coe v12)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v3 v4
        -> let v5 = coe du_simplify'8321'_120 (coe v3) (coe v4) in
           coe
             (case coe v5 of
                C_result_110 v6 v7 v8
                  -> let v9
                           = coe
                               C_result_110 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v6 v7)
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v6
                                     v7)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316
                                     v8)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)) in
                     coe
                       (case coe v7 of
                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v11
                            -> coe
                                 C_result_110
                                 (let v12 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v13
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v12) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v13)))))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198
                                       (coe
                                          MAlonzo.Code.Effect.Applicative.d_pure_32
                                          (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                          erased v11)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                          v11))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316
                                       v8)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (let v12
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v13
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v12) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v13)))))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Laws.du_nonempty'45'return_258)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                          MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                            -> coe
                                 C_result_110
                                 (let v11 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Empty.du_'8709'_24
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v12)))))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198
                                       (let v11
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v12
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v11) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v12)))))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316
                                       v8)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (let v11
                                              = coe
                                                  MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                        coe
                                          (let v12
                                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                     (coe v11) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                   (coe v12)))))
                                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                       (coe MAlonzo.Code.TotalParserCombinators.Laws.du_zero_248)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                          _ -> coe v9)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v3 v5 v6
        -> let v7 = coe du_simplify'8321'_120 (coe v3) (coe v6) in
           coe
             (case coe v7 of
                C_result_110 v8 v9 v10
                  -> coe
                       C_result_110 (coe v8) (coe v9)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                          v3 v6
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Laws.du_correct_316 (coe v3)
                             (coe v0) (coe v5))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                             v8 v9 v10
                             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.simplify₁∞
d_simplify'8321''8734'_134 ::
  () ->
  () ->
  () -> [AgdaAny] -> Maybe AgdaAny -> AgdaAny -> T_Simplify'8321'_88
d_simplify'8321''8734'_134 ~v0 ~v1 ~v2 v3 v4 v5
  = du_simplify'8321''8734'_134 v3 v4 v5
du_simplify'8321''8734'_134 ::
  [AgdaAny] -> Maybe AgdaAny -> AgdaAny -> T_Simplify'8321'_88
du_simplify'8321''8734'_134 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe du_simplify'8321'_120 (coe v0) (coe v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             C_result_110 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2))
             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.simplify₁-[]
d_simplify'8321''45''91''93'_140 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_simplify'8321''45''91''93'_140 ~v0 ~v1 v2
  = du_simplify'8321''45''91''93'_140 v2
du_simplify'8321''45''91''93'_140 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_simplify'8321''45''91''93'_140 v0
  = coe
      d_parser_106
      (coe
         du_simplify'8321'_120
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0))
-- TotalParserCombinators.Simplification.simplify₁-[]-correct
d_simplify'8321''45''91''93''45'correct_148 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_simplify'8321''45''91''93''45'correct_148 ~v0 ~v1 v2
  = du_simplify'8321''45''91''93''45'correct_148 v2
du_simplify'8321''45''91''93''45'correct_148 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_simplify'8321''45''91''93''45'correct_148 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (d_bag_104
         (coe
            du_simplify'8321'_120
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)))
      (d_parser_106
         (coe
            du_simplify'8321'_120
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)))
      (d_correct_108
         (coe
            du_simplify'8321'_120
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (d_parser_106
            (coe
               du_simplify'8321'_120
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe MAlonzo.Code.TotalParserCombinators.Laws.du_correct_338))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Simplification.[]-lemma
d_'91''93''45'lemma_156 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''93''45'lemma_156 = erased
-- TotalParserCombinators.Simplification._.helper
d_helper_280 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  () ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  [AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) -> T_Simplify'8321'_88
d_helper_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 v22 ~v23 v24 ~v25 v26
             v27 v28 ~v29 v30 v31 ~v32 v33
  = du_helper_280 v22 v24 v26 v27 v28 v30 v31 v33
du_helper_280 ::
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T_Simplify'8321'_88
du_helper_280 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v2
              v4 in
    coe
      (let v9
             = coe
                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v3
                 v6 in
       coe
         (let v10
                = coe
                    C_result_110
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v0)
                          (coe v2))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v1)
                          (coe v3)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v0)
                          (coe v2))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v1)
                          (coe v3))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v0
                          v2 v4 v5)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v1
                          v3 v6 v7))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98) in
          coe
            (case coe v8 of
               MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
                 -> case coe v9 of
                      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
                        -> coe
                             C_result_110
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v11 ->
                                         coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                              (coe v2) (coe v11))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                              (coe v3) (coe v11))))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v11 ->
                                         coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                              (coe v2) (coe v11))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                              (coe v3) (coe v11)))))
                                v9
                                (coe
                                   du_'9839''45'22_153321 (coe v2) (coe v3) (coe v0) (coe v1)
                                   (coe v5) (coe v7)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                (let v11 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Effect.Choice.du__'8739'__24
                                      (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v11))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3))))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v3))))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v2)))
                                      v9
                                      (\ v11 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                           v0 (coe v5 v11)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v3)))
                                      v9
                                      (\ v11 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                           v1 (coe v7 v11))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v2)))
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Laws.du_correct'8734'_358)
                                      (coe
                                         (\ v11 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                      (coe v3)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v3)))
                                      (coe v1)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Laws.du_correct'8734'_358)
                                      (coe
                                         (\ v11 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                   (let v11
                                          = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Effect.Choice.du__'8739'__24
                                         (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v11))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                  (coe v2))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                  (coe v3))))))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2)))
                                         v9
                                         (\ v11 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v0 (coe v5 v11)))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3)))
                                         v9
                                         (\ v11 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v1 (coe v7 v11))))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                         (coe
                                            (\ v11 ->
                                               coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                         (coe
                                            (\ v11 ->
                                               coe
                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (let v12
                                                      = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                          (coe v11) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                     (coe
                                                        MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                        (coe v12))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v2) (coe v11))
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v3) (coe v11))))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (let v12
                                                      = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                          (coe v11) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                     (coe
                                                        MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                        (coe v12))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v2) (coe v11))
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                       (coe v3) (coe v11)))))
                                         v9
                                         (\ v11 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                 (coe v2) (coe v11))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                 (coe v3) (coe v11))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v0 (coe v5 v11))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v1 (coe v7 v11))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                         (coe
                                            MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'distributive_110
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (let v12
                                                      = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                          (coe v11) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                     (coe
                                                        MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                        (coe v12)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                               (coe v3))
                                            (coe v9)
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                    v0 (coe v5 v11)))
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                    v1 (coe v7 v11)))))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v2) (coe v11))
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v3) (coe v11))))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v2) (coe v11))
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v3) (coe v11)))))
                                            v9
                                            (coe
                                               du_'9839''45'22_153321 (coe v2) (coe v3) (coe v0)
                                               (coe v1) (coe v5) (coe v7)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v2) (coe v11))
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v3) (coe v11)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v2) (coe v11))
                                                       (coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                          (coe v3) (coe v11)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
                      _ -> coe v10
               _ -> coe v10)))
-- TotalParserCombinators.Simplification._._.cast₁
d_cast'8321'_324 ::
  () ->
  () ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_cast'8321'_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24
                 ~v25 ~v26 ~v27 ~v28 ~v29 ~v30 ~v31 v32
  = du_cast'8321'_324 v32
du_cast'8321'_324 :: AgdaAny -> AgdaAny
du_cast'8321'_324 v0 = coe v0
-- TotalParserCombinators.Simplification._._.cast₂
d_cast'8322'_326 ::
  () ->
  () ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_cast'8322'_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24
                 ~v25 ~v26 ~v27 ~v28 ~v29 ~v30 ~v31 v32
  = du_cast'8322'_326 v32
du_cast'8322'_326 :: AgdaAny -> AgdaAny
du_cast'8322'_326 v0 = coe v0
-- TotalParserCombinators.Simplification._.cast₁
d_cast'8321'_384 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  () ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22 ->
  AgdaAny -> AgdaAny
d_cast'8321'_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 v16
  = du_cast'8321'_384 v16
du_cast'8321'_384 :: AgdaAny -> AgdaAny
du_cast'8321'_384 v0 = coe v0
-- TotalParserCombinators.Simplification._.helper
d_helper_410 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  () ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_Simplify'8321'_88 ->
  T_Simplify'8321'_88 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22 ->
  T_Simplify'8321'_88
d_helper_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 v12
             ~v13 v14 v15 v16 v17 ~v18 ~v19
  = du_helper_410 v11 v12 v14 v15 v16 v17
du_helper_410 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_Simplify'8321'_88 -> T_Simplify'8321'_88 -> T_Simplify'8321'_88
du_helper_410 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_result_110 v6 v7 v8
        -> let v9
                 = let v9
                         = coe
                             du_helper'8242'_490 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) in
                   coe
                     (case coe v5 of
                        C_result_110 v10 v11 v12
                          -> case coe v11 of
                               MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                                 -> coe
                                      C_result_110
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                       coe
                                         (let v15
                                                = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                    (coe v14) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Effect.Empty.du_'8709'_24
                                               (coe
                                                  MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                  (coe v15)))))
                                      (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                               v1 v2)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                            (coe v1)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                            (coe v12))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                            (let v14
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (let v15
                                                      = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                          (coe v14) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                     (coe
                                                        MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                        (coe v15)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''8859'_170
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                  v1 v2))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                               _ -> coe v9
                        _ -> MAlonzo.RTE.mazUnreachableError) in
           coe
             (case coe v7 of
                MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v11
                  -> case coe v5 of
                       C_result_110 v12 v13 v14
                         -> case coe v13 of
                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v16
                                -> coe
                                     C_result_110
                                     (coe
                                        MAlonzo.Code.Effect.Applicative.d_pure_32
                                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                           (coe
                                              MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                              (coe
                                                 MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                 (coe
                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                        erased (coe v11 v16))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                        (coe v11 v16))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v16)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v11)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v16)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                              v11)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                              v16))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v16)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe v0)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v11)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe v8) (coe v14))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                           (coe
                                              MAlonzo.Code.Effect.Applicative.d_pure_32
                                              (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                                 (coe
                                                    MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                    (coe
                                                       MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                       (coe
                                                          MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                                              erased (coe v11 v16))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                              (coe v11 v16))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_homomorphism_358
                                              (coe v11) (coe v16))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                              MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                                -> coe
                                     C_result_110
                                     (let v16
                                            = coe
                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                      coe
                                        (let v17
                                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe v16) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Effect.Empty.du_'8709'_24
                                              (coe
                                                 MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                 (coe v17)))))
                                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v1 v2)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                           (coe v1)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                           (coe v0)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                           (coe v14))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                           (let v16
                                                  = coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                            coe
                                              (let v17
                                                     = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                         (coe v16) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Effect.Empty.du_'8709'_24
                                                    (coe
                                                       MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                       (coe v17)))))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''8859'_170
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v1 v2))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                              _ -> coe v9
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
                  -> coe
                       C_result_110
                       (let v11 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v12
                                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v11) in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v12)))))
                       (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe v1))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe v1)))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                                v3))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                             (coe v1)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe v1)))
                             (coe v0)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe v8)
                             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                             (let v11 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                              coe
                                (let v12
                                       = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v11) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v12)))))
                             (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''8859'_126
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe v1))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                                   v3))
                             (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                _ -> coe v9)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification._._.helper′
d_helper'8242'_490 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  () ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_Simplify'8321'_88 ->
  T_Simplify'8321'_88 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22 ->
  () ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_Simplify'8321'_88 ->
  T_Simplify'8321'_88 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22 ->
  T_Simplify'8321'_88
d_helper'8242'_490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
                   v24 v25 ~v26 v27 v28 v29 v30 ~v31 ~v32
  = du_helper'8242'_490 v24 v25 v27 v28 v29 v30
du_helper'8242'_490 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  T_Simplify'8321'_88 -> T_Simplify'8321'_88 -> T_Simplify'8321'_88
du_helper'8242'_490 v0 v1 v2 v3 v4 v5
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> case coe v4 of
                    C_result_110 v8 v9 v10
                      -> case coe v5 of
                           C_result_110 v11 v12 v13
                             -> coe
                                  C_result_110
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v8)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v11)))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v8))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v11)) v9
                                     v12)
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                              (coe v8)))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v11)))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v8))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v11))
                                        v9 v12)
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v7))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v11))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v6))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                           (coe v8))
                                        (coe v10) (coe v13))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v5 of
                    C_result_110 v7 v8 v9
                      -> coe
                           C_result_110
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
                              (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v0 v1 v2
                              v8)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v6)))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312) v2
                                 v8)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                 (coe v9))
                              (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
               -> case coe v4 of
                    C_result_110 v7 v8 v9
                      -> coe
                           C_result_110
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
                              (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v0 v1 v8
                              v3)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 v8 v3)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v6))
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                 (coe MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                 (coe v9)
                                 (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                              (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    C_result_110
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                       (coe v1))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v1 v1 v2
                       v3)
                    (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification._.lemma
d_lemma_682 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_682 = erased
-- TotalParserCombinators.Simplification._.cast-[]
d_cast'45''91''93'_684 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_cast'45''91''93'_684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_cast'45''91''93'_684 v11
du_cast'45''91''93'_684 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_cast'45''91''93'_684 v0 = coe v0
-- TotalParserCombinators.Simplification.simplify
d_simplify_746 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_simplify_746 ~v0 ~v1 v2 v3 = du_simplify_746 v2 v3
du_simplify_746 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_simplify_746 v0 v1
  = coe
      du_simplify'8595'_754
      (coe d_parser_106 (coe du_simplify'8321'_120 (coe v0) (coe v1)))
-- TotalParserCombinators.Simplification.simplify↓
d_simplify'8595'_754 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_simplify'8595'_754 ~v0 ~v1 ~v2 v3 = du_simplify'8595'_754 v3
du_simplify'8595'_754 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_simplify'8595'_754 v0
  = case coe v0 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2
      MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136 -> coe v0
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v3
             (coe du_simplify'8595'_754 (coe v4))
             (coe du_simplify'8595'_754 (coe v5))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v3 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v3
             v4 (coe du_simplify'8595'_754 (coe v5))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v3 v4 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v3 v4
                           (coe du_simplify'8595'_754 (coe v5))
                           (coe du_simplify'8595'_754 (coe v6))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v3
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 d_bag_104
                                 (coe
                                    du_simplify'8321'_120
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                       (coe v4))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                       (coe v6)))))
                           (coe du_simplify'8595'_754 (coe v5))
                           (coe du_'9839''45'83_629915 (coe v7) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 d_bag_104
                                 (coe
                                    du_simplify'8321'_120
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                       (coe v5)))))
                           v4 (coe du_'9839''45'84_631335 (coe v7) (coe v5))
                           (coe du_simplify'8595'_754 (coe v6))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v3 v3
                           (coe du_'9839''45'86_633239 (coe v5))
                           (coe du_'9839''45'88_634005 (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v3 v4 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v3
                           v4 (coe du_simplify'8595'_754 (coe v5))
                           (\ v9 -> coe du_simplify'8595'_754 (coe v6 v9))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v3
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    d_bag_104
                                      (coe
                                         du_simplify'8321'_120
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                            (coe v4) (coe v8))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                            (coe v6 v8))))))
                           (coe du_simplify'8595'_754 (coe v5))
                           (coe du_'9839''45'91_639949 (coe v7) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 d_bag_104
                                 (coe
                                    du_simplify'8321'_120
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                       (coe v5)))))
                           v4 (coe du_'9839''45'92_641459 (coe v7) (coe v5))
                           (\ v8 -> coe du_simplify'8595'_754 (coe v6 v8))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v3
                           v3 (coe du_'9839''45'94_643465 (coe v5))
                           (coe du_'9839''45'96_644239 (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v2 v3
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v2
             (coe du_simplify'8595'_754 (coe v3))
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v2 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v2 v4
             (coe du_simplify'8595'_754 (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.simplify-[]
d_simplify'45''91''93'_760 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_simplify'45''91''93'_760 ~v0 ~v1 v2
  = du_simplify'45''91''93'_760 v2
du_simplify'45''91''93'_760 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_simplify'45''91''93'_760 v0
  = coe
      du_simplify'8595'_754
      (coe du_simplify'8321''45''91''93'_140 (coe v0))
-- TotalParserCombinators.Simplification.correct
d_correct_862 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct_862 ~v0 ~v1 v2 v3 = du_correct_862 v2 v3
du_correct_862 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct_862 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (d_bag_104 (coe du_simplify'8321'_120 (coe v0) (coe v1)))
      (d_parser_106 (coe du_simplify'8321'_120 (coe v0) (coe v1)))
      (coe
         du_correct'8595'_872
         (coe d_parser_106 (coe du_simplify'8321'_120 (coe v0) (coe v1))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         v0 v1
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (d_correct_108 (coe du_simplify'8321'_120 (coe v0) (coe v1))))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Simplification.correct↓
d_correct'8595'_872 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct'8595'_872 ~v0 ~v1 ~v2 v3 = du_correct'8595'_872 v3
du_correct'8595'_872 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct'8595'_872 v0
  = case coe v0 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v3 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
             (coe du_correct'8595'_872 (coe v4))
             (coe du_correct'8595'_872 (coe v5))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v3 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230
             (coe du_correct'8595'_872 (coe v5))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v3 v4 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v8))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v8))))
                           (coe du_correct'8595'_872 (coe v5))
                           (coe du_correct'8595'_872 (coe v6))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       d_bag_104
                                       (coe
                                          du_simplify'8321'_120
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                             (coe v4))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                             (coe v6)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           v3 (coe du_correct'8595'_872 (coe v5))
                           (coe du_'9839''45'109_671131 (coe v7) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                           v4
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       d_bag_104
                                       (coe
                                          du_simplify'8321'_120
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                             (coe v5)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           (coe du_'9839''45'110_672657 (coe v7) (coe v5))
                           (coe du_correct'8595'_872 (coe v6))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                           v3 v3 (coe du_'9839''45'111_673999 (coe v5))
                           (coe du_'9839''45'112_674441 (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v3 v4 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v8))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v8))))
                           (coe du_correct'8595'_872 (coe v5))
                           (\ v9 -> coe du_correct'8595'_872 (coe v6 v9))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v8 ->
                                          d_bag_104
                                            (coe
                                               du_simplify'8321'_120
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                  (coe v4) (coe v8))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                  (coe v6 v8))))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           v3 (coe du_correct'8595'_872 (coe v5))
                           (coe du_'9839''45'119_680531 (coe v7) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                           v4
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       d_bag_104
                                       (coe
                                          du_simplify'8321'_120
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                             (coe v5)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v7))))
                           (coe du_'9839''45'120_682129 (coe v7) (coe v5))
                           (\ v8 -> coe du_correct'8595'_872 (coe v6 v8))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                           v3 v3 (coe du_'9839''45'121_683501 (coe v5))
                           (coe du_'9839''45'122_683953 (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v2 v3
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316
             (coe du_correct'8595'_872 (coe v3))
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v2 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C_cast_340
             (coe du_correct'8595'_872 (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Simplification.correct-[]
d_correct'45''91''93'_880 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct'45''91''93'_880 ~v0 ~v1 v2
  = du_correct'45''91''93'_880 v2
du_correct'45''91''93'_880 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct'45''91''93'_880 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe du_simplify'8321''45''91''93'_140 (coe v0))
      (coe
         du_correct'8595'_872
         (coe du_simplify'8321''45''91''93'_140 (coe v0)))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v0
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe du_simplify'8321''45''91''93''45'correct_148 (coe v0)))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Simplification._._._.♯-22
d_'9839''45'22_153321 ::
  () ->
  () ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'22_153321 ~v0 ~v1 v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
                      ~v24 ~v25 v26 v27 ~v28 v29 ~v30 v31 v32
  = du_'9839''45'22_153321 v2 v3 v26 v27 v29 v31 v32
du_'9839''45'22_153321 ::
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'22_153321 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v0)
            (coe v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v1)
            (coe v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v2
            (coe v4 v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v3
            (coe v5 v6)))
-- TotalParserCombinators.Simplification._.♯-83
d_'9839''45'83_629915 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'83_629915 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_'9839''45'83_629915 v4 v7
du_'9839''45'83_629915 ::
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'83_629915 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify_746
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-84
d_'9839''45'84_631335 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'84_631335 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du_'9839''45'84_631335 v4 v6
du_'9839''45'84_631335 ::
  [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'84_631335 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify_746
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-86
d_'9839''45'86_633239 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'86_633239 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'9839''45'86_633239 v5
du_'9839''45'86_633239 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'86_633239 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify'45''91''93'_760
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-88
d_'9839''45'88_634005 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'88_634005 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'9839''45'88_634005 v6
du_'9839''45'88_634005 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'88_634005 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify'45''91''93'_760
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-91
d_'9839''45'91_639949 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'91_639949 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_'9839''45'91_639949 v4 v7 v8
du_'9839''45'91_639949 ::
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'91_639949 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify_746
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1 v2)))
-- TotalParserCombinators.Simplification._.♯-92
d_'9839''45'92_641459 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'92_641459 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du_'9839''45'92_641459 v4 v6
du_'9839''45'92_641459 ::
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'92_641459 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify_746
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-94
d_'9839''45'94_643465 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'94_643465 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'9839''45'94_643465 v5
du_'9839''45'94_643465 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'94_643465 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify'45''91''93'_760
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-96
d_'9839''45'96_644239 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'96_644239 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'9839''45'96_644239 v6 v7
du_'9839''45'96_644239 ::
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'96_644239 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_simplify'45''91''93'_760
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0 v1)))
-- TotalParserCombinators.Simplification._.♯-109
d_'9839''45'109_671131 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'109_671131 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7
  = du_'9839''45'109_671131 v4 v7
du_'9839''45'109_671131 ::
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'109_671131 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct_862
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-110
d_'9839''45'110_672657 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'110_672657 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du_'9839''45'110_672657 v4 v6
du_'9839''45'110_672657 ::
  [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'110_672657 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct_862
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-111
d_'9839''45'111_673999 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'111_673999 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'9839''45'111_673999 v5
du_'9839''45'111_673999 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'111_673999 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct'45''91''93'_880
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-112
d_'9839''45'112_674441 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'112_674441 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'9839''45'112_674441 v6
du_'9839''45'112_674441 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'112_674441 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct'45''91''93'_880
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-119
d_'9839''45'119_680531 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'119_680531 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_'9839''45'119_680531 v4 v7 v8
du_'9839''45'119_680531 ::
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'119_680531 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct_862
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1 v2)))
-- TotalParserCombinators.Simplification._.♯-120
d_'9839''45'120_682129 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'120_682129 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du_'9839''45'120_682129 v4 v6
du_'9839''45'120_682129 ::
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'120_682129 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct_862
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Simplification._.♯-121
d_'9839''45'121_683501 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'121_683501 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'9839''45'121_683501 v5
du_'9839''45'121_683501 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'121_683501 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct'45''91''93'_880
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Simplification._.♯-122
d_'9839''45'122_683953 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'122_683953 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'9839''45'122_683953 v6 v7
du_'9839''45'122_683953 ::
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'122_683953 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_correct'45''91''93'_880
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0 v1)))
