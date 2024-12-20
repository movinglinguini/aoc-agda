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

module MAlonzo.Code.DayOne where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Char.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.List.Sort.MergeSort
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.IO.Base
import qualified MAlonzo.Code.IO.Finite
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.TotalParserCombinators.BreadthFirst
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

import qualified System.Environment
import qualified System.FilePath
import qualified Data.Text
import qualified Data.Traversable
-- DayOne._.tok
d_tok_8 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_tok_8
  = coe
      MAlonzo.Code.TotalParserCombinators.Lib.du_tok_812
      (coe MAlonzo.Code.Data.Char.Properties.d__'8799'__14)
-- DayOne.emp
d_emp_12 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_emp_12 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
-- DayOne.term
d_term_14 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_term_14
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
      (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
       coe
         (coe
            MAlonzo.Code.Effect.Choice.du__'8739'__24
            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
            (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v2 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_foldl_230
                                   (coe
                                      (\ v3 -> addInt (coe mulInt (coe (10 :: Integer)) (coe v3))))
                                   (coe (0 :: Integer)) (coe v2))
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_foldl_230
                                            (coe
                                               (\ v3 ->
                                                  addInt
                                                    (coe mulInt (coe (10 :: Integer)) (coe v3))))
                                            (coe (0 :: Integer)) (coe v2))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
                     (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_foldl_230
                                            (coe
                                               (\ v3 ->
                                                  addInt
                                                    (coe mulInt (coe (10 :: Integer)) (coe v3))))
                                            (coe (0 :: Integer)) (coe v2))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Choice.du__'8739'__24
                                    (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v2 ->
                                                coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldl_230
                                                     (coe
                                                        (\ v3 ->
                                                           addInt
                                                             (coe
                                                                mulInt (coe (10 :: Integer))
                                                                (coe v3))))
                                                     (coe (0 :: Integer)) (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v2 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      d_factor_16
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
                     (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_foldl_230
                                            (coe
                                               (\ v3 ->
                                                  addInt
                                                    (coe mulInt (coe (10 :: Integer)) (coe v3))))
                                            (coe (0 :: Integer)) (coe v2))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v2 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Choice.du__'8739'__24
                                    (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v1))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v2 ->
                                                coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldl_230
                                                     (coe
                                                        (\ v3 ->
                                                           addInt
                                                             (coe
                                                                mulInt (coe (10 :: Integer))
                                                                (coe v3))))
                                                     (coe (0 :: Integer)) (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v2 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) d_'9839''45'0_29
         (\ v0 ->
            coe
              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe
                    (\ v1 ->
                       coe
                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                         (coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                             coe
                               (coe
                                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
                                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                   coe
                                     (coe
                                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                              (coe
                                                 (\ v4 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldl_230
                                                         (coe
                                                            (\ v5 ->
                                                               addInt
                                                                 (coe
                                                                    mulInt (coe (10 :: Integer))
                                                                    (coe v5))))
                                                         (coe (0 :: Integer)) (coe v4))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                              (coe
                                                 (\ v4 ->
                                                    coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                           (let v3
                                                  = coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                 (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                    (coe v3))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                       (coe
                                                          (\ v4 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Data.List.Base.du_foldl_230
                                                                  (coe
                                                                     (\ v5 ->
                                                                        addInt
                                                                          (coe
                                                                             mulInt
                                                                             (coe (10 :: Integer))
                                                                             (coe v5))))
                                                                  (coe (0 :: Integer)) (coe v4))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                       (coe
                                                          (\ v4 ->
                                                             coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (coe
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe addInt (coe v0) (coe v2))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Lib.du_tok_812
                 (coe MAlonzo.Code.Data.Char.Properties.d__'8799'__14) (coe '+'))
              (\ v1 ->
                 coe
                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                       coe
                         (coe
                            MAlonzo.Code.Effect.Choice.du__'8739'__24
                            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
                            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                             coe
                               (coe
                                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           (\ v4 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_foldl_230
                                                   (coe
                                                      (\ v5 ->
                                                         addInt
                                                           (coe
                                                              mulInt (coe (10 :: Integer))
                                                              (coe v5))))
                                                   (coe (0 :: Integer)) (coe v4))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           (\ v4 ->
                                              coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                            (coe
                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                     (let v3
                                            = coe
                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe
                                                    (\ v4 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldl_230
                                                            (coe
                                                               (\ v5 ->
                                                                  addInt
                                                                    (coe
                                                                       mulInt (coe (10 :: Integer))
                                                                       (coe v5))))
                                                            (coe (0 :: Integer)) (coe v4))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe
                                                    (\ v4 ->
                                                       coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (coe
                         (\ v2 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe addInt (coe v0) (coe v2))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   d_factor_16
                   (\ v2 ->
                      coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (addInt (coe v0) (coe v2))))))
-- DayOne.factor
d_factor_16 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_factor_16
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
      (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
       coe
         (coe
            MAlonzo.Code.Effect.Choice.du__'8739'__24
            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v1 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Data.List.Base.du_foldl_230
                             (coe (\ v2 -> addInt (coe mulInt (coe (10 :: Integer)) (coe v2))))
                             (coe (0 :: Integer)) (coe v1))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v1 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v1 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_foldl_230
                                      (coe
                                         (\ v2 ->
                                            addInt (coe mulInt (coe (10 :: Integer)) (coe v2))))
                                      (coe (0 :: Integer)) (coe v1))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v1 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      d_atom_18
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v1 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_foldl_230
                                      (coe
                                         (\ v2 ->
                                            addInt (coe mulInt (coe (10 :: Integer)) (coe v2))))
                                      (coe (0 :: Integer)) (coe v1))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v1 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         d_'9839''45'4_607
         (\ v0 ->
            coe
              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe
                    (\ v1 ->
                       coe
                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                         (coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                             coe
                               (coe
                                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           (\ v3 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_foldl_230
                                                   (coe
                                                      (\ v4 ->
                                                         addInt
                                                           (coe
                                                              mulInt (coe (10 :: Integer))
                                                              (coe v4))))
                                                   (coe (0 :: Integer)) (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           (\ v3 ->
                                              coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (coe
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe mulInt (coe v0) (coe v2))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Lib.du_tok_812
                 (coe MAlonzo.Code.Data.Char.Properties.d__'8799'__14) (coe '*'))
              (\ v1 ->
                 coe
                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                       coe
                         (coe
                            MAlonzo.Code.Effect.Choice.du__'8739'__24
                            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
                            (coe
                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     (\ v3 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_foldl_230
                                             (coe
                                                (\ v4 ->
                                                   addInt
                                                     (coe mulInt (coe (10 :: Integer)) (coe v4))))
                                             (coe (0 :: Integer)) (coe v3))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                            (coe
                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     (\ v3 ->
                                        coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (coe
                         (\ v2 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe mulInt (coe v0) (coe v2))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   d_atom_18
                   (\ v2 ->
                      coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (mulInt (coe v0) (coe v2))))))
-- DayOne.atom
d_atom_18 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_atom_18
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
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
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               (\ v0 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))
      MAlonzo.Code.TotalParserCombinators.Lib.d_number_1134
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               (\ v0 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Lib.du_tok_812
            (coe MAlonzo.Code.Data.Char.Properties.d__'8799'__14) (coe '('))
         (\ v0 ->
            coe
              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
              (coe du_'9839''45'9_1269)
              (\ v1 ->
                 coe
                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                      (coe
                         (\ v2 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Lib.du_tok_812
                      (coe MAlonzo.Code.Data.Char.Properties.d__'8799'__14) (coe ')'))
                   (\ v2 ->
                      coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))))
-- DayOne.pair
d_pair_20 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_pair_20
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
                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                 (coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                            (coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v3 ->
                                                coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v0) (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))
      MAlonzo.Code.TotalParserCombinators.Lib.d_number_1134
      (\ v0 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
           (coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
           (coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 (\ v1 ->
                    coe
                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                      (coe
                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                         (coe
                            (\ v2 ->
                               coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v3 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
           MAlonzo.Code.TotalParserCombinators.Lib.d_whitespace_790
           (\ v1 ->
              coe
                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                (coe
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                (coe
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                   (coe
                      (\ v2 ->
                         coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                                         (coe v2))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                MAlonzo.Code.TotalParserCombinators.Lib.d_number_1134
                (\ v2 ->
                   coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v2))
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     MAlonzo.Code.TotalParserCombinators.Lib.d_whitespace_790
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v2))))))
-- DayOne.listOfPairs
d_listOfPairs_22 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_listOfPairs_22
  = coe
      MAlonzo.Code.TotalParserCombinators.Lib.du__'43'_100
      (coe d_pair_20)
-- DayOne.♯-0
d_'9839''45'0_29 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'0_29
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16 (coe d_term_14)
-- DayOne.test
d_test_54 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> [AgdaAny]
d_test_54 ~v0 v1 v2 v3 = du_test_54 v1 v2 v3
du_test_54 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> [AgdaAny]
du_test_54 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.BreadthFirst.du_parse_178 v0 v1
      (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v2)
-- DayOne.manDistance
d_manDistance_66 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_manDistance_66 v0
  = case coe v0 of
      [] -> coe (0 :: Integer)
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> let v5
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                            (\ v5 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                 (coe v3))
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v3)
                                  (coe v4))) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                         -> if coe v6
                              then coe
                                     addInt (coe d_manDistance_66 (coe v2))
                                     (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v4 v3)
                              else coe
                                     addInt (coe d_manDistance_66 (coe v2))
                                     (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3 v4)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- DayOne.split
d_split_92 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_split_92
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230 (coe d_go_98)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- DayOne._.go
d_go_98 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_go_98 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- DayOne.joinPairs
d_joinPairs_108 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_joinPairs_108 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe MAlonzo.Code.Data.List.Base.du_zip_182 v1 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- DayOne._.mergeSort
d_mergeSort_128 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108
d_mergeSort_128
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_mergeSort_264
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2828)
-- DayOne.msNats
d_msNats_136 :: [Integer] -> [Integer]
d_msNats_136
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_sort_186
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2828)
-- DayOne.sortPairs
d_sortPairs_138 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_sortPairs_138 v0
  = coe d_joinPairs_108 (coe du_go_146 (coe d_split_92 v0))
-- DayOne._.go
d_go_146 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_go_146 ~v0 v1 = du_go_146 v1
du_go_146 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_go_146 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_msNats_136 v1)
             (coe d_msNats_136 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- DayOne.primGetArgs
d_primGetArgs_154 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    ()
    (MAlonzo.Code.Agda.Builtin.List.T_List_10
       () MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_primGetArgs_154
  = fmap Data.Text.pack <$> System.Environment.getArgs
-- DayOne.primPrintStrList
d_primPrintStrList_156 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_primPrintStrList_156 = \xs -> traverse print xs >> pure ()
-- DayOne.getArgs
d_getArgs_158 :: MAlonzo.Code.IO.Base.T_IO_20
d_getArgs_158
  = coe MAlonzo.Code.IO.Base.C_lift_26 (coe d_primGetArgs_154)
-- DayOne.printStrList
d_printStrList_160 :: [Integer] -> MAlonzo.Code.IO.Base.T_IO_20
d_printStrList_160 v0
  = coe
      MAlonzo.Code.IO.Base.C_lift_26 (coe d_primPrintStrList_156 v0)
main = coe d_main_164
-- DayOne.main
d_main_164 ::
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Level.T_Lift_8
d_main_164
  = coe
      MAlonzo.Code.IO.Base.du_run_122 (coe ())
      (coe
         MAlonzo.Code.IO.Base.du__'62''62''61'__104 (coe d_getArgs_158)
         (coe
            (\ v0 ->
               let v1
                     = MAlonzo.Code.IO.Finite.d_putStrLn_28
                         (coe ()) (coe ("Usage: DayOne INPUTFILE\n\n" :: Data.Text.Text)) in
               coe
                 (case coe v0 of
                    (:) v2 v3
                      -> case coe v3 of
                           []
                             -> coe
                                  MAlonzo.Code.IO.Base.du__'62''62''61'__104
                                  (coe MAlonzo.Code.IO.Finite.d_readFile_8 (coe v2))
                                  (coe
                                     (\ v4 ->
                                        coe
                                          MAlonzo.Code.IO.Base.du__'62''62''61'__104
                                          (coe
                                             d_printStrList_160
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                (coe
                                                   (\ v5 ->
                                                      d_manDistance_66
                                                        (coe d_sortPairs_138 (coe v5))))
                                                (coe
                                                   du_test_54 (coe v3) (coe d_listOfPairs_22)
                                                   (coe v4))))
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.IO.Base.C_pure_30
                                                  (coe
                                                     MAlonzo.Code.Level.C_lift_20
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                           _ -> coe v1
                    _ -> coe v1))))
-- DayOne.♯-4
d_'9839''45'4_607 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'4_607
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe d_factor_16)
-- DayOne._.♯-9
d_'9839''45'9_1269 ::
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'9_1269 ~v0 = du_'9839''45'9_1269
du_'9839''45'9_1269 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'9_1269
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16 (coe d_term_14)
