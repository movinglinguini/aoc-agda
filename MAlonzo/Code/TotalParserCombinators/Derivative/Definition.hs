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

module MAlonzo.Code.TotalParserCombinators.Derivative.Definition where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Derivative.Definition._._>>=_
d__'62''62''61'__8 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__8
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe
         MAlonzo.Code.Effect.Monad.d_rawMonad_214
         (coe
            MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
            (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
-- TotalParserCombinators.Derivative.Definition._._∣_
d__'8739'__10 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8739'__10
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Effect.Choice.du__'8739'__24
           (coe MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0)))
-- TotalParserCombinators.Derivative.Definition._._⊛_
d__'8859'__12 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__12
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (let v1 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v0) in
       coe
         (let v2 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v1) in
          coe
            (\ v3 v4 ->
               coe
                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                 (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v2)))))
-- TotalParserCombinators.Derivative.Definition._.∅
d_'8709'_14 :: () -> [AgdaAny]
d_'8709'_14
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (let v1 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v0) in
       coe
         (\ v2 ->
            coe
              MAlonzo.Code.Effect.Empty.du_'8709'_24
              (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v1))))
-- TotalParserCombinators.Derivative.Definition._.pure
d_pure_16 :: () -> AgdaAny -> [AgdaAny]
d_pure_16
  = coe
      MAlonzo.Code.Effect.Applicative.d_pure_32
      (coe
         MAlonzo.Code.Effect.Monad.d_rawApplicative_32
         (coe
            MAlonzo.Code.Effect.Monad.d_rawMonad_214
            (coe
               MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
               (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
-- TotalParserCombinators.Derivative.Definition.D-bag
d_D'45'bag_24 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny]
d_D'45'bag_24 ~v0 ~v1 ~v2 v3 v4 = du_D'45'bag_24 v3 v4
du_D'45'bag_24 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny]
du_D'45'bag_24 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3
        -> let v4
                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                     (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
           coe
             (coe
                MAlonzo.Code.Effect.Empty.du_'8709'_24
                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))
      MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
        -> let v3
                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                     (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
           coe
             (coe
                MAlonzo.Code.Effect.Empty.du_'8709'_24
                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v3)))
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe
             MAlonzo.Code.Effect.Applicative.d_pure_32
             (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                (coe
                   MAlonzo.Code.Effect.Monad.d_rawMonad_214
                   (coe
                      MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                      (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
             erased v0
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Effect.Choice.du__'8739'__24
             (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))
             (coe du_D'45'bag_24 (coe v0) (coe v5))
             (coe du_D'45'bag_24 (coe v0) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v4 v5 v6
        -> coe
             MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
             (coe du_D'45'bag_24 (coe v0) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v4 v5 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))
                           (let v10
                                  = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                            coe
                              (let v11 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v10) in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                    (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v11))
                                    (coe du_D'45'bag_24 (coe v0) (coe v6)) v8)))
                           (let v10
                                  = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                            coe
                              (let v11 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v10) in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                    (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v11)) v9
                                    (coe du_D'45'bag_24 (coe v0) (coe v7)))))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v9
                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                         coe
                           (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v9) in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v10))
                                 (coe du_D'45'bag_24 (coe v0) (coe v6)) v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> let v9
                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                         coe
                           (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v9) in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v10)) v8
                                 (coe du_D'45'bag_24 (coe v0) (coe v7))))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v8
                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Empty.du_'8709'_24
                              (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v4 v5 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))
                           (coe
                              MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                              (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                 (coe
                                    MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                    (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                              erased erased (coe du_D'45'bag_24 (coe v0) (coe v6)) v8)
                           (coe
                              MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                              (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                 (coe
                                    MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                    (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                              erased erased v9
                              (\ v10 -> coe du_D'45'bag_24 (coe v0) (coe v7 v10)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                           (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                 (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                           erased erased (coe du_D'45'bag_24 (coe v0) (coe v6)) v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                           (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                 (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                           erased erased v8 (\ v9 -> coe du_D'45'bag_24 (coe v0) (coe v7 v9))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v8
                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Empty.du_'8709'_24
                              (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v3 v4
        -> coe du_D'45'bag_24 (coe v0) (coe v4)
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v3 v5 v6
        -> coe du_D'45'bag_24 (coe v0) (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Derivative.Definition.D
d_D_154 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_D_154 ~v0 ~v1 ~v2 v3 v4 = du_D_154 v3 v4
du_D_154 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_D_154 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
      MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
             (coe du_D'45'bag_24 (coe v0) (coe v5))
             (coe du_D'45'bag_24 (coe v0) (coe v6))
             (coe du_D_154 (coe v0) (coe v5)) (coe du_D_154 (coe v0) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v4 v5 v6
        -> coe
             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
             (coe du_D'45'bag_24 (coe v0) (coe v6)) v5
             (coe du_D_154 (coe v0) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v4 v5 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe du_D'45'bag_24 (coe v0) (coe v6))))
                              (coe v5))
                           (let v10
                                  = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
                            coe
                              (let v11 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v10) in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                    (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v11)) v9
                                    (coe du_D'45'bag_24 (coe v0) (coe v7)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe du_D'45'bag_24 (coe v0) (coe v6)))
                              v5 (coe du_D_154 (coe v0) (coe v6)) v7)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v4
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe du_D'45'bag_24 (coe v0) (coe v7)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v9))
                              (coe du_D_154 (coe v0) (coe v7)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe du_D'45'bag_24 (coe v0) (coe v6)))
                           v5 (coe du_D_154 (coe v0) (coe v6))
                           (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       du_D'45'bag_24 (coe v0)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                          (coe v6)))))
                              (coe v5))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_map_22 (coe v9)
                                         (coe du_D'45'bag_24 (coe v0) (coe v7))))
                                 (coe v8)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    du_D'45'bag_24 (coe v0)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v6))))
                              v5 (coe du_'9839''45'5_33521 (coe v8) (coe v0) (coe v6)) v7)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v4
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe du_D'45'bag_24 (coe v0) (coe v7)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v8))
                              (coe du_D_154 (coe v0) (coe v7)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 du_D'45'bag_24 (coe v0)
                                 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v6))))
                           v4 (coe du_'9839''45'3_31371 (coe v0) (coe v6))
                           (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v4 v5 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe du_D'45'bag_24 (coe v0) (coe v6)))
                              (coe v5))
                           (coe
                              MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                              (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                 (coe
                                    MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                    (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                              erased erased v9
                              (\ v10 -> coe du_D'45'bag_24 (coe v0) (coe v7 v10)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe du_D'45'bag_24 (coe v0) (coe v6)))
                              v5 (coe du_D_154 (coe v0) (coe v6)) v7)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v4
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe (\ v10 -> coe du_D'45'bag_24 (coe v0) (coe v7 v10))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v9))
                              (\ v10 -> coe du_D_154 (coe v0) (coe v7 v10)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe du_D'45'bag_24 (coe v0) (coe v6)))
                           v5 (coe du_D_154 (coe v0) (coe v6))
                           (\ v9 ->
                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7 v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    du_D'45'bag_24 (coe v0)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v6))))
                              (coe v5))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe (\ v9 -> coe du_D'45'bag_24 (coe v0) (coe v7 v9))) (coe v8)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    du_D'45'bag_24 (coe v0)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v6))))
                              v5 (coe du_'9839''45'13_46963 (coe v8) (coe v0) (coe v6)) v7)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v4
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe (\ v9 -> coe du_D'45'bag_24 (coe v0) (coe v7 v9))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v8))
                              (\ v9 -> coe du_D_154 (coe v0) (coe v7 v9)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 du_D'45'bag_24 (coe v0)
                                 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v6))))
                           v4 (coe du_'9839''45'11_44717 (coe v0) (coe v6))
                           (\ v8 ->
                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7 v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v3 v4
        -> coe du_D_154 (coe v0) (coe v4)
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v3 v5 v6
        -> coe du_D_154 (coe v0) (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Derivative.Definition._.♯-3
d_'9839''45'3_31371 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'3_31371 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_'9839''45'3_31371 v5 v6
du_'9839''45'3_31371 ::
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'3_31371 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D_154 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Derivative.Definition._.♯-5
d_'9839''45'5_33521 ::
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'5_33521 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
  = du_'9839''45'5_33521 v4 v6 v7
du_'9839''45'5_33521 ::
  [AgdaAny -> AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'5_33521 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D_154 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2)))
-- TotalParserCombinators.Derivative.Definition._.♯-11
d_'9839''45'11_44717 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'11_44717 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_'9839''45'11_44717 v5 v6
du_'9839''45'11_44717 ::
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'11_44717 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D_154 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1)))
-- TotalParserCombinators.Derivative.Definition._.♯-13
d_'9839''45'13_46963 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'13_46963 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
  = du_'9839''45'13_46963 v4 v6 v7
du_'9839''45'13_46963 ::
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'13_46963 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D_154 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2)))
