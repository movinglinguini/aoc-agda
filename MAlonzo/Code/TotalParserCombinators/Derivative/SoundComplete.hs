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

module MAlonzo.Code.TotalParserCombinators.Derivative.SoundComplete where

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
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.TotalParserCombinators.InitialBag
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics

-- TotalParserCombinators.Derivative.SoundComplete._._>>=_
d__'62''62''61'__8 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__8
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Derivative.SoundComplete._._⊛_
d__'8859'__10 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__10
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- TotalParserCombinators.Derivative.SoundComplete.sound
d_sound_26 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_sound_26 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 = du_sound_26 v5 v6 v7
du_sound_26 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_sound_26 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe
             seq (coe v2)
             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_token_22)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v4 v5 v6 v7
        -> case coe v2 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v15
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                    (coe du_sound_26 (coe v0) (coe v6) (coe v15))
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v15
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                    (coe du_sound_26 (coe v0) (coe v7) (coe v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v5 v6 v7
        -> case coe v2 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v10 v15
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76
                    v10 (coe du_sound_26 (coe v0) (coe v7) (coe v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v5 v6 v7 v8
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v18
                             -> case coe v18 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v21 v22 v23 v24 v29 v30
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                         (coe v21) (coe v22)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                            (coe v23))
                                         (coe v24) (coe du_sound_26 (coe v0) (coe v7) (coe v29))
                                         (coe v30)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v18
                             -> case coe v18 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v21 v22 v23 v24 v29 v30
                                    -> let v31
                                             = coe
                                                 MAlonzo.Code.TotalParserCombinators.Lib.du_sound_464
                                                 (coe v9) (coe v29) in
                                       coe
                                         (case coe v31 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                              -> coe
                                                   MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                                   (coe v21) (coe v22)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                         (coe v24)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.InitialBag.du_sound_120
                                                      (coe v21) (coe v7) (coe v33))
                                                   (coe du_sound_26 (coe v0) (coe v8) (coe v30))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v17
                             -> case coe v17 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v20 v21 v22 v23 v28 v29
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                         (coe v20) (coe v21)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                            (coe v22))
                                         (coe v23)
                                         (coe
                                            du_sound_26 (coe v0)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                               (coe v7))
                                            (coe v28))
                                         (coe v29)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v17
                             -> case coe v17 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v20 v21 v22 v23 v28 v29
                                    -> let v30
                                             = coe
                                                 MAlonzo.Code.TotalParserCombinators.Lib.du_sound_464
                                                 (coe v9) (coe v28) in
                                       coe
                                         (case coe v30 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                              -> coe
                                                   MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                                   (coe v20) (coe v21)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                         (coe v23)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.InitialBag.du_sound_120
                                                      (coe v20)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                         (coe v7))
                                                      (coe v32))
                                                   (coe du_sound_26 (coe v0) (coe v8) (coe v29))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v12 v13 v14 v15 v20 v21
                             -> coe
                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                  (coe v12) (coe v13)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                     (coe v14))
                                  (coe v15) (coe du_sound_26 (coe v0) (coe v7) (coe v20)) (coe v21)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v11 v12 v13 v14 v19 v20
                             -> coe
                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                  (coe v11) (coe v12)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                     (coe v13))
                                  (coe v14)
                                  (coe
                                     du_sound_26 (coe v0)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7))
                                     (coe v19))
                                  (coe v20)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v5 v6 v7 v8
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v18
                             -> case coe v18 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v21 v23 v24 v29 v30
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                         (coe v21)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                            (coe v23))
                                         (coe v24) (coe du_sound_26 (coe v0) (coe v7) (coe v29))
                                         (coe v30)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v18
                             -> case coe v18 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v21 v23 v24 v29 v30
                                    -> let v31
                                             = coe
                                                 MAlonzo.Code.TotalParserCombinators.Lib.du_sound_464
                                                 (coe v9) (coe v29) in
                                       coe
                                         (case coe v31 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                              -> coe
                                                   MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                                   (coe v21)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                         (coe v24)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.InitialBag.du_sound_120
                                                      (coe v21) (coe v7) (coe v33))
                                                   (coe du_sound_26 (coe v0) (coe v8 v21) (coe v30))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v17
                             -> case coe v17 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v20 v22 v23 v28 v29
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                         (coe v20)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                            (coe v22))
                                         (coe v23)
                                         (coe
                                            du_sound_26 (coe v0)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                               (coe v7))
                                            (coe v28))
                                         (coe v29)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v17
                             -> case coe v17 of
                                  MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v20 v22 v23 v28 v29
                                    -> let v30
                                             = coe
                                                 MAlonzo.Code.TotalParserCombinators.Lib.du_sound_464
                                                 (coe v9) (coe v28) in
                                       coe
                                         (case coe v30 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                              -> coe
                                                   MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                                   (coe v20)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                         (coe v23)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.InitialBag.du_sound_120
                                                      (coe v20)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                         (coe v7))
                                                      (coe v32))
                                                   (coe du_sound_26 (coe v0) (coe v8 v20) (coe v29))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v12 v14 v15 v20 v21
                             -> coe
                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                  (coe v12)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                     (coe v14))
                                  (coe v15) (coe du_sound_26 (coe v0) (coe v7) (coe v20)) (coe v21)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v2 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v11 v13 v14 v19 v20
                             -> coe
                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                                  (coe v11)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                                     (coe v13))
                                  (coe v14)
                                  (coe
                                     du_sound_26 (coe v0)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v7))
                                     (coe v19))
                                  (coe v20)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v4 v5
        -> coe
             MAlonzo.Code.TotalParserCombinators.Semantics.C_nonempty_146
             (coe du_sound_26 (coe v0) (coe v5) (coe v2))
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v4 v6 v7
        -> coe
             MAlonzo.Code.TotalParserCombinators.Semantics.C_cast_164
             (coe du_sound_26 (coe v0) (coe v7) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Derivative.SoundComplete.complete
d_complete_242 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete_242 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_complete_242 v3 v4 v5 v6 v7
du_complete_242 ::
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete_242 v0 v1 v2 v3 v4
  = coe
      du_complete'8242'_260 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- TotalParserCombinators.Derivative.SoundComplete.complete′
d_complete'8242'_260 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_complete'8242'_260 ~v0 ~v1 ~v2 v3 v4 ~v5 v6 v7 v8 ~v9
  = du_complete'8242'_260 v3 v4 v6 v7 v8
du_complete'8242'_260 ::
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_complete'8242'_260 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_token_136
        -> coe
             seq (coe v4)
             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v17
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                    (coe du_complete_242 (coe v0) (coe v1) (coe v2) (coe v8) (coe v17))
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v17
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                    (coe du_complete_242 (coe v0) (coe v1) (coe v2) (coe v9) (coe v17))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v12 v17
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76
                    v12
                    (coe
                       du_complete_242 (coe v12) (coe v1) (coe v2) (coe v9) (coe v17))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v7 v8 v9 v10
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
               -> coe
                    seq (coe v8)
                    (case coe v4 of
                       MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v14 v15 v16 v17 v22 v23
                         -> case coe v16 of
                              []
                                -> coe
                                     MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102
                                        v14 v15 v16 v1
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Lib.du_complete_484
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                 (coe v11)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.InitialBag.du_complete_34
                                              (coe v14)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v8 v9)
                                              (coe v22)))
                                        (coe
                                           du_complete_242 (coe v15) (coe v1) (coe v2)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v7 v10)
                                           (coe v23)))
                              (:) v24 v25
                                -> coe
                                     MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102
                                        v14 v15 v25 v17
                                        (coe
                                           du_complete_242 (coe v14) (coe v25) (coe v24)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v8 v9)
                                           (coe v22))
                                        v23)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                      -> case coe v4 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v14 v15 v16 v17 v22 v23
                             -> case coe v16 of
                                  (:) v24 v25
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102
                                         v14 v15 v25 v17
                                         (coe
                                            du_complete_242 (coe v14) (coe v25) (coe v24)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                               v8 v9)
                                            (coe v22))
                                         v23
                                  _ -> erased
                           _ -> erased
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v4 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v13 v14 v15 v16 v21 v22
                             -> case coe v15 of
                                  (:) v23 v24
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102
                                         v13 v14 v24 v16
                                         (coe
                                            du_complete_242 (coe v13) (coe v24) (coe v23)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                               v8 v9)
                                            (coe v21))
                                         v22
                                  _ -> erased
                           _ -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v7 v8 v9 v10
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
               -> coe
                    seq (coe v8)
                    (case coe v4 of
                       MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v14 v16 v17 v22 v23
                         -> case coe v16 of
                              []
                                -> coe
                                     MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130
                                        v14 v16 v1
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Lib.du_complete_484
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                 (coe v11)))
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.InitialBag.du_complete_34
                                              (coe v14)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v8 v9)
                                              (coe v22)))
                                        (coe
                                           du_complete_242 (coe v0) (coe v1) (coe v2)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v7 (coe v10 v14))
                                           (coe v23)))
                              (:) v24 v25
                                -> coe
                                     MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130
                                        v14 v25 v17
                                        (coe
                                           du_complete_242 (coe v14) (coe v25) (coe v24)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              v8 v9)
                                           (coe v22))
                                        v23)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                      -> case coe v4 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v14 v16 v17 v22 v23
                             -> case coe v16 of
                                  (:) v24 v25
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130
                                         v14 v25 v17
                                         (coe
                                            du_complete_242 (coe v14) (coe v25) (coe v24)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                               v8 v9)
                                            (coe v22))
                                         v23
                                  _ -> erased
                           _ -> erased
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v4 of
                           MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v13 v15 v16 v21 v22
                             -> case coe v15 of
                                  (:) v23 v24
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130
                                         v13 v24 v16
                                         (coe
                                            du_complete_242 (coe v13) (coe v24) (coe v23)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                               v8 v9)
                                            (coe v21))
                                         v22
                                  _ -> erased
                           _ -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v6 v7
        -> case coe v4 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_nonempty_146 v14
               -> coe
                    du_complete_242 (coe v0) (coe v1) (coe v2) (coe v7) (coe v14)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v6 v8 v9
        -> case coe v4 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C_cast_164 v17
               -> coe
                    du_complete_242 (coe v0) (coe v1) (coe v2) (coe v9) (coe v17)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
