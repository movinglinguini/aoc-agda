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

module MAlonzo.Code.TotalParserCombinators.InitialBag where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics

-- TotalParserCombinators.InitialBag._._⊛_
d__'8859'__6 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__6
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
-- TotalParserCombinators.InitialBag.⊛-∈↔
d_'8859''45''8712''8596'_22 ::
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8859''45''8712''8596'_22 ~v0 ~v1 = du_'8859''45''8712''8596'_22
du_'8859''45''8712''8596'_22 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8859''45''8712''8596'_22 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8859''45''8712''8596'_602
      v0 v1
-- TotalParserCombinators.InitialBag.complete
d_complete_34 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_complete_34 ~v0 ~v1 ~v2 v3 v4 v5 = du_complete_34 v3 v4 v5
du_complete_34 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_complete_34 v0 v1 v2
  = coe du_complete'8242'_48 (coe v0) (coe v1) (coe v2)
-- TotalParserCombinators.InitialBag.complete′
d_complete'8242'_48 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_complete'8242'_48 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 ~v7
  = du_complete'8242'_48 v3 v5 v6
du_complete'8242'_48 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_complete'8242'_48 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1972
             (coe
                MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_pure'8596'_2028)
             erased
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v10
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v12 v13 v14 v15
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1972
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                       (coe v12))
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                       (coe du_complete_34 (coe v0) (coe v14) (coe v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v10
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v12 v13 v14 v15
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1972
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596'_970
                       (coe v12))
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe du_complete_34 (coe v0) (coe v15) (coe v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v5 v10
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v13 v14 v15
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1972
                    (coe
                       MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_map'45''8712''8596'_176
                       (coe v13))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe du_complete_34 (coe v5) (coe v15) (coe v10)) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v5 v6 v7 v8 v13 v14
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v17 v18 v19 v20
               -> case coe v18 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                      -> case coe v7 of
                           []
                             -> coe
                                  MAlonzo.Code.Function.Bundles.d_to_1972
                                  (coe
                                     du_'8859''45''8712''8596'_22
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                        (coe v17))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                        (coe v18))
                                     (coe v5 v6))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              du_complete_34 (coe v5)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 v18 v19)
                                              (coe v13))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 du_complete_34 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                    v17 v20)
                                                 (coe v14))
                                              erased))))
                           _ -> erased
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130 v5 v7 v8 v13 v14
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v17 v18 v19 v20
               -> case coe v17 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                      -> case coe v18 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v22
                             -> case coe v7 of
                                  []
                                    -> coe
                                         MAlonzo.Code.Function.Bundles.d_to_1972
                                         (coe
                                            MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'62''62''61''45''8712''8596'_576
                                            (coe v21) (coe v22))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  du_complete_34 (coe v5)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                     v18 v19)
                                                  (coe v13))
                                               (coe
                                                  du_complete_34 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                     v17 (coe v20 v5))
                                                  (coe v14))))
                                  _ -> erased
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Semantics.C_cast_164 v10
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v12 v14 v15
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1972 (coe v14 v0)
                    (coe du_complete_34 (coe v0) (coe v15) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.InitialBag.sound
d_sound_120 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_sound_120 ~v0 ~v1 ~v2 v3 v4 v5 = du_sound_120 v3 v4 v5
du_sound_120 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_sound_120 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v4
        -> coe
             seq (coe v2)
             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v4 v5 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8315'_868
                     (coe v4) (coe v2) in
           coe
             (case coe v8 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                  -> coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                       (coe du_sound_120 (coe v0) (coe v6) (coe v9))
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                  -> coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                       (coe du_sound_120 (coe v0) (coe v7) (coe v9))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v5 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe v5)
                     (coe
                        MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                        (coe v5)
                        (coe
                           MAlonzo.Code.Function.Bundles.d_from_1974
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                              erased)
                           v2)) in
           coe
             (case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> case coe v10 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> coe
                              MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76 v9
                              (coe du_sound_120 (coe v9) (coe v7) (coe v11))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v5 v6 v7 v8
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1974
                            (coe
                               du_'8859''45''8712''8596'_22
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                               v9 v0)
                            v2 in
                  coe
                    (coe
                       seq (coe v5)
                       (case coe v10 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                            -> case coe v12 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                   -> case coe v14 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                          -> case coe v16 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                 -> coe
                                                      MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102
                                                      v11 v13
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                      (coe
                                                         du_sound_120 (coe v11) (coe v7) (coe v15))
                                                      (coe
                                                         du_sound_120 (coe v13) (coe v8) (coe v17))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v5 v6 v7 v8
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                            (coe
                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                            (coe
                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1974
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                     (\ v10 v11 v12 ->
                                        coe
                                          MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                          (coe
                                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                                          (coe
                                             MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                                     erased erased erased
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                        (\ v10 ->
                                           coe
                                             MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                                        erased)
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_concat'8596'_1256
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_map_22 (coe v9)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Function.Bundles.d_from_1974
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                        (\ v10 ->
                                           coe
                                             MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                                        erased)
                                     v2))) in
                  coe
                    (case coe v10 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> case coe v12 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                -> coe
                                     MAlonzo.Code.TotalParserCombinators.Semantics.C__'62''62''61'__130
                                     v11 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe du_sound_120 (coe v11) (coe v7) (coe v13))
                                     (coe du_sound'8242'_138 v0 (coe v9 v11) v5 (coe v8 v11) v14)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v4 v6 v7
        -> coe
             MAlonzo.Code.TotalParserCombinators.Semantics.C_cast_164
             (coe
                du_sound_120 (coe v0) (coe v7)
                (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v6 v0) v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.InitialBag.sound′
d_sound'8242'_138 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_sound'8242'_138 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8
  = du_sound'8242'_138 v4 v5 v6 v7
du_sound'8242'_138 ::
  AgdaAny ->
  [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_sound'8242'_138 v0 v1 v2 v3
  = coe seq (coe v2) (coe du_sound_120 (coe v0) (coe v3))
-- TotalParserCombinators.InitialBag.sound∘complete
d_sound'8728'complete_292 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sound'8728'complete_292 = erased
-- TotalParserCombinators.InitialBag.sound∘complete′
d_sound'8728'complete'8242'_310 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T__'8773'__22
d_sound'8728'complete'8242'_310 = erased
-- TotalParserCombinators.InitialBag._.inv
d_inv_352 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_inv_352 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_inv_352 v5 v6
du_inv_352 ::
  Maybe [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_inv_352 v0 v1
  = coe
      du_'8859''45''8712''8596'_22
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
      v1
-- TotalParserCombinators.InitialBag.complete∘sound
d_complete'8728'sound_500 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_complete'8728'sound_500 = erased
-- TotalParserCombinators.InitialBag.correct
d_correct_662 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_correct_662 ~v0 ~v1 ~v2 v3 v4 = du_correct_662 v3 v4
du_correct_662 ::
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_correct_662 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
      (coe du_complete_34 (coe v0) (coe v1))
      (coe du_sound_120 (coe v0) (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- TotalParserCombinators.InitialBag.cong
d_cong_684 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> AgdaAny -> AgdaAny
d_cong_684 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_cong_684 v0 v5 v6 v7 v8
du_cong_684 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> AgdaAny -> AgdaAny
du_cong_684 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
      (\ v5 v6 v7 ->
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
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe v0))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
            (\ v5 v6 v7 ->
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
               (\ v5 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe v0))
               erased)
            (coe du_correct_662 (coe v4) (coe v2)))
         (coe v3 v4 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe du_correct_662 (coe v4) (coe v1)))
