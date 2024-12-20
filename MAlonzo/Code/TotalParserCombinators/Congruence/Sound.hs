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

module MAlonzo.Code.TotalParserCombinators.Congruence.Sound where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.TotalParserCombinators.CoinductiveEquality
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Derivative
import qualified MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Congruence.Sound._._>>=_
d__'62''62''61'__8 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__8
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Congruence.Sound._._⊛_
d__'8859'__10 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__10
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- TotalParserCombinators.Congruence.Sound.⊛flatten-lemma
d_'8859'flatten'45'lemma_92 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8859'flatten'45'lemma_92 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8859'flatten'45'lemma_92 v0 v3 v4 v5 v6 v7
du_'8859'flatten'45'lemma_92 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8859'flatten'45'lemma_92 v0 v1 v2 v3 v4 v5
  = coe
      du_helper_114 (coe v0) (coe v1) (coe v2) (coe v5) (coe v3) (coe v4)
-- TotalParserCombinators.Congruence.Sound._.helper
d_helper_114 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_helper_114 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11
  = du_helper_114 v0 v3 v4 v7 v8 v9 v10 v11
du_helper_114 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  ((AgdaAny -> AgdaAny) -> AgdaAny) ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_helper_114 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8859''45'cong_522
                    (coe v0) (coe v1) (coe v2)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v4))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                    (coe v3) (coe v6) (coe v7)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v9 v10 v11 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe v0))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                       (\ v9 v10 v11 ->
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
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0))
                          erased)
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                          (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                          (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                              coe
                                (let v11 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v10) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                      (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v11)) v1
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
                                                  (coe v13)))))))))
                          (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
                          erased v7))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8859''45'cong_522
                       (coe v0) (coe v1) (coe v1)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v4))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                       (let v9
                              = coe
                                  MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                  (coe v0) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v9))
                             (coe v1)))
                       (coe v6) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                    (\ v9 v10 v11 ->
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
                       (\ v9 v10 v11 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0))
                          erased)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'8859''45'cong_522
                          (coe v0) (coe v2) (coe v2)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v4))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v5))
                          (let v9
                                 = coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v9))
                                (coe v2)))
                          (coe v6) (coe v7)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                       (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe
                             MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                             (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
                       (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
                       (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                           coe
                             (let v11 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v10) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                   (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v11)) v2
                                   (let v12
                                          = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                    coe
                                      (let v13
                                             = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                 (coe v12) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Effect.Empty.du_'8709'_24
                                            (coe
                                               MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                               (coe v13)))))))))
                       erased v7)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                    (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                          (coe v0)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                       (coe v1) (coe v5))
                    v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.Sound.[]-⊛flatten
d_'91''93''45''8859'flatten_150 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'91''93''45''8859'flatten_150 ~v0 ~v1 v2 v3
  = du_'91''93''45''8859'flatten_150 v2 v3
du_'91''93''45''8859'flatten_150 ::
  Maybe [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'91''93''45''8859'flatten_150 v0 v1
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
         (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v0))
         v1)
-- TotalParserCombinators.Congruence.Sound.bind-lemma
d_bind'45'lemma_170 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bind'45'lemma_170 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_bind'45'lemma_170 v0 v3 v4 v5 v6 v7
du_bind'45'lemma_170 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_bind'45'lemma_170 v0 v1 v2 v3 v4 v5
  = coe
      du_helper_194 (coe v0) (coe v1) (coe v2) (coe v5) (coe v3) (coe v4)
-- TotalParserCombinators.Congruence.Sound._.helper
d_helper_194 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_helper_194 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11
  = du_helper_194 v0 v3 v4 v7 v8 v9 v10 v11
du_helper_194 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_helper_194 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'62''62''61''45'cong_484
                    (coe v0)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v2))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v4))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v5))
                    (coe v3) (coe v6) (coe v7)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v9 v10 v11 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe v0))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v9 v10 v11 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0))
                          erased)
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                          (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                             (coe
                                MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                             (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                             erased erased
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                             (let v9
                                    = let v9
                                            = coe
                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                      coe
                                        (let v10
                                               = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe v9) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Effect.Empty.du_'8709'_24
                                              (coe
                                                 MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                                 (coe v10)))) in
                              coe (\ v10 -> v9)))
                          (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                           coe
                             (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                              coe
                                (coe
                                   MAlonzo.Code.Effect.Empty.du_'8709'_24
                                   (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
                          erased v7))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'62''62''61''45'cong_484
                       (coe v0)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v4))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v5))
                       (let v9
                              = coe
                                  MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                  (coe v0) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v9))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe v1))))
                       (coe v6) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v9 v10 v11 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe v0))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v9 v10 v11 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe v0))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe v0))
                          erased)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'62''62''61''45'cong_484
                          (coe v0)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v2))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v2))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v4))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38 (coe v5))
                          (let v9
                                 = coe
                                     MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v9))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe v2))))
                          (coe v6) (coe v7)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                       (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe
                             MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                             (coe v0)))
                       (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                        coe
                          (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                           coe
                             (coe
                                MAlonzo.Code.Effect.Empty.du_'8709'_24
                                (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
                       (coe
                          MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                          (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                          erased erased
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v2))
                          (let v9
                                 = let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                   coe
                                     (let v10
                                            = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                (coe v9) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                                           (coe
                                              MAlonzo.Code.Effect.Monad.d_rawEmpty_216
                                              (coe v10)))) in
                           coe (\ v10 -> v9)))
                       erased v7)
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                    (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                          (coe v0)))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v1)
                       (coe v5))
                    v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.Sound.bind-nothing
d_bind'45'nothing_234 ::
  () ->
  () ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_bind'45'nothing_234 ~v0 ~v1 v2 v3 = du_bind'45'nothing_234 v2 v3
du_bind'45'nothing_234 ::
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_bind'45'nothing_234 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
             (coe
                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v0))
             v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)))
             (coe
                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50 (coe v0)
                (coe v0))
             v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.Sound.initial-bag-cong
d_initial'45'bag'45'cong_252 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny -> AgdaAny
d_initial'45'bag'45'cong_252 v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_initial'45'bag'45'cong_252 v0 v3 v4 v5 v6 v7 v8
du_initial'45'bag'45'cong_252 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny -> AgdaAny
du_initial'45'bag'45'cong_252 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88 v13 v14
        -> coe v13 v6
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe v0)))
             v1 v6
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120 v10 v13 v15 v16
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
             (\ v17 v18 v19 ->
                coe
                  MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                  (coe v0))
             erased erased erased
             (coe
                du_initial'45'bag'45'cong_252 (coe v0) (coe v10) (coe v2) (coe v13)
                (coe v4) (coe v16) (coe v6))
             (coe
                du_initial'45'bag'45'cong_252 (coe v0) (coe v1) (coe v10) (coe v3)
                (coe v13) (coe v15) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142 v10 v13 v15 v16
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
             (\ v17 v18 v19 ->
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
                du_initial'45'bag'45'cong_252 (coe v0) (coe v10) (coe v2) (coe v13)
                (coe v4) (coe v16) (coe v6))
             (coe
                du_initial'45'bag'45'cong_252
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                (coe v1) (coe v10) (coe v3) (coe v13) (coe v15) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158 v7 v13
        -> coe
             MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168 v7
             (coe
                du_initial'45'bag'45'cong_252
                (coe
                   MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                   (coe v7))
                (coe v2) (coe v1) (coe v4) (coe v3) (coe v13) (coe v6))
      MAlonzo.Code.TotalParserCombinators.Congruence.C_return_170
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v13
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v15
                      -> coe
                           MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                           (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                              (coe
                                 MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                 (coe v0)))
                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v13))
                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v15)) erased
                           v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_fail_176
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe v0)))
             (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
              coe
                (let v10 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v9) in
                 coe
                   (coe
                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v10)))))
             v6
      MAlonzo.Code.TotalParserCombinators.Congruence.C_token_180
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe v0)))
             (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
              coe
                (let v9 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v8) in
                 coe
                   (coe
                      MAlonzo.Code.Effect.Empty.du_'8709'_24
                      (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v9)))))
             v6
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206 v17 v18
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v20 v21 v22 v23
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v25 v26 v27 v28
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                           (coe v0) (coe v20) (coe v25)
                           (coe
                              du_initial'45'bag'45'cong_252 (coe v0) (coe v20) (coe v25)
                              (coe v22) (coe v27) (coe v17))
                           (coe
                              du_initial'45'bag'45'cong_252 (coe v0) (coe v21) (coe v26)
                              (coe v23) (coe v28) (coe v18))
                           (coe v6)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230 v17
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v20 v21 v22
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v25 v26 v27
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_map'45'cong_376
                           (coe v0) (coe v20) (coe v25)
                           (coe
                              du_initial'45'bag'45'cong_252 (coe v0) (coe v20) (coe v25)
                              (coe v22) (coe v27) (coe v17))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262 v10 v11 v16 v17
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v20 v21 v22 v23
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v26 v27 v28 v29
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v30
                             -> case coe v30 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v33
                                           -> coe
                                                du_'8859'flatten'45'lemma_92 v0
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                      (coe v11)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                      (coe v11)))
                                                v31 v32
                                                (coe
                                                   du_initial'45'bag'45'cong_252 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                         (coe v11)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                         (coe v11)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      v31 v22)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      v32 v28)
                                                   (coe v16))
                                                (coe
                                                   du_initial'45'bag'45'cong_252 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                         (coe v10)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                         (coe v10)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v33))
                                                      v23)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe v33))
                                                      v29)
                                                   (coe v17))
                                                v6
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                           -> coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                (\ v33 v34 v35 ->
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
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                   (\ v33 v34 v35 ->
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
                                                      (\ v33 ->
                                                         coe
                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                           (coe v0))
                                                      erased)
                                                   (coe
                                                      MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                                                      (coe
                                                         MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                      (coe
                                                         du_'91''93''45''8859'flatten_150 (coe v32)
                                                         (coe v6))))
                                                (coe
                                                   du_'91''93''45''8859'flatten_150 (coe v31)
                                                   (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                                  (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                        (coe
                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                           (coe v11)))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                        (coe v10)))
                                  v6
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300 v10 v11 v16 v17
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v20 v21 v22 v23
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v26 v27 v28 v29
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v30
                             -> case coe v30 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v33
                                           -> coe
                                                du_bind'45'lemma_170 v0
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                   (coe v11))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                   (coe v11))
                                                v31 v32
                                                (coe
                                                   du_initial'45'bag'45'cong_252 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                         (coe v11)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                         (coe v11)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      v31 v22)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                      v32 v28)
                                                   (coe v16))
                                                (\ v34 ->
                                                   coe
                                                     du_initial'45'bag'45'cong_252 (coe v0)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                           (coe v10))
                                                        (coe v34))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe v10))
                                                        (coe v34))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v33))
                                                        (coe v23 v34))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v33))
                                                        (coe v29 v34))
                                                     (coe v17 v34))
                                                v6
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                           -> coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                (\ v33 v34 v35 ->
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
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                   (\ v33 v34 v35 ->
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
                                                      (\ v33 ->
                                                         coe
                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                           (coe v0))
                                                      erased)
                                                   (coe
                                                      MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                                                      (coe
                                                         MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                      (coe
                                                         du_bind'45'nothing_234 (coe v32)
                                                         (coe v6))))
                                                (coe du_bind'45'nothing_234 (coe v31) (coe v6))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                                  (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                        (coe v10)))
                                  v6
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316 v13
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_refl_98
             (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Order_30
                   (coe v0)))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v6
      MAlonzo.Code.TotalParserCombinators.Congruence.C_cast_340 v17
        -> case coe v3 of
             MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v19 v21 v22
               -> case coe v4 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v24 v26 v27
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                           (\ v28 v29 v30 ->
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
                              (\ v28 v29 v30 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                   (coe v0))
                              erased erased erased
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                 (\ v28 v29 v30 ->
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
                                    (\ v28 ->
                                       coe
                                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                         (coe v0))
                                    erased)
                                 (coe v26 v6))
                              (coe
                                 du_initial'45'bag'45'cong_252 (coe v0) (coe v19) (coe v24)
                                 (coe v22) (coe v27) (coe v17) (coe v6)))
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                              (coe v21 v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.Sound.D-cong
d_D'45'cong_384 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45'cong_384 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_D'45'cong_384 v0 v5 v6 v7 v8
du_D'45'cong_384 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_D'45'cong_384 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88 v11 v12
        -> coe
             MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v12 v4)
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120 v8 v11 v13 v14
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                (coe v4) (coe v11))
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                (coe v4) (coe v11))
             (coe
                du_D'45'cong_384 (coe v0) (coe v1) (coe v11) (coe v13) (coe v4))
             (coe
                du_D'45'cong_384 (coe v0) (coe v11) (coe v2) (coe v14) (coe v4))
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142 v8 v11 v13 v14
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                (coe v4) (coe v11))
             (coe
                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                (coe v4) (coe v11))
             (coe
                du_D'45'cong_384
                (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                (coe v1) (coe v11) (coe v13) (coe v4))
             (coe
                du_D'45'cong_384 (coe v0) (coe v11) (coe v2) (coe v14) (coe v4))
      MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158 v5 v11
        -> coe
             MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158 v5
             (coe
                du_D'45'cong_384
                (coe
                   MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                   (coe v5))
                (coe v2) (coe v1) (coe v11) (coe v4))
      MAlonzo.Code.TotalParserCombinators.Congruence.C_return_170
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Congruence.C_fail_176
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Congruence.C_token_180
        -> coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206 v15 v16
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v18 v19 v20 v21
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v23 v24 v25 v26
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                           (coe
                              du_D'45'cong_384 (coe v0) (coe v20) (coe v25) (coe v15) (coe v4))
                           (coe
                              du_D'45'cong_384 (coe v0) (coe v21) (coe v26) (coe v16) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230 v15
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v18 v19 v20
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v23 v24 v25
                      -> coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'60''36''62'__230
                           (coe
                              du_D'45'cong_384 (coe v0) (coe v20) (coe v25) (coe v15) (coe v4))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262 v8 v9 v14 v15
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v18 v19 v20 v21
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174 v24 v25 v26 v27
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v28
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v29
                                    -> case coe v29 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                           -> coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (let v32
                                                       = coe
                                                           MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                      (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                         (coe v32))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v28))
                                                                     v20))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28)))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v30))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v30 v21))))))
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
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v28))
                                                                  v20))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28)))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v30))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v30 v21))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28))
                                                               v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28))
                                                            v20))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                         v30 v21))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v30 v21)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v30 v21))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                                   (coe v30)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v28))
                                                   (coe v4) (coe v20) (coe v21))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                                   (let v32
                                                          = coe
                                                              MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                         (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                            (coe v32))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v28))
                                                                                 v20)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v28))
                                                                                 v26)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v28))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v28))))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v31)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v30 v21)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v31 v27)))))))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v28))
                                                                              v20)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe v28))
                                                                              v26)))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28))))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v31)))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v30 v21)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v31 v27)))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v28))
                                                                           v20)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v28))
                                                                           v26))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28)))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v28))
                                                               v26))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v31 v27))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v31))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v30 v21)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v31 v27))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v31)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v31 v27))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v28))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v28))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))
                                                                        v20)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28))
                                                                        v26)))))
                                                         (coe
                                                            du_D'45'cong_384 (coe v0)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28))
                                                               v20)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v28))
                                                               v26)
                                                            (coe v14) (coe v4))
                                                         v15)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        v30 v21)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        v31 v27)))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_cong_142
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v31)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v31)))))))
                                                            (coe
                                                               du_initial'45'bag'45'cong_252
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                     (coe v9)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe v9)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v28))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v28))
                                                                  v26)
                                                               (coe v14)))
                                                         (coe
                                                            du_D'45'cong_384 (coe v0)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v30 v21)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v31 v27)
                                                            (coe v15) (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                            v31
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            v26 v27))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                            v31
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            v26 v27))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                         (coe
                                                            MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                                            (coe v31)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            (coe v4) (coe v26) (coe v27)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                         (let v29
                                                = coe
                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Effect.Choice.du__'8739'__24
                                               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v29))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v28))
                                                              v20))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                           (coe v9))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           v9 v21))))))
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
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe v9))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        v9 v21))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))
                                                        v20)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                  (coe v4)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28))
                                                     v20))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                  v9 v21))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v9)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        v9 v21)))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v9)))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                  (coe v4)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                     v9 v21))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                            (coe v9)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v28))
                                            (coe v4) (coe v20) (coe v21))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                            (let v29
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                     (coe v29))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v28))
                                                                 v20))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v21)))))))
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
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v28))
                                                              v20))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v21)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))
                                                        v20))
                                                  (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                     (coe v21)))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v21))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                  (coe du_'9839''45'65_302085 (coe v21) (coe v4))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v21))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v21))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                               (let v29
                                                      = coe
                                                          MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                        (coe v29))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe v28))
                                                                             v20)))
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v28))
                                                                             v26)))))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v28))))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                              (coe v9)))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                          (coe v21))))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                          (coe v27))))))))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v28))
                                                                          v20)))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v28))
                                                                          v26)))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))))))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe v9)))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                       (coe v21))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                       (coe v27))))))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v28))
                                                                       v20)))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))
                                                                       v26))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28)))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26))
                                                     (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                        (coe v27)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe v9))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                       (coe v21))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                       (coe v27)))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                     (coe
                                                        du_'9839''45'76_313283 (coe v27) (coe v4))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v28))))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))
                                                                    v20)))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))
                                                                    v26)))))
                                                     (coe
                                                        du_D'45'cong_384 (coe v0)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26)
                                                        (coe v14) (coe v4))
                                                     (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                        (coe v15)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                    (coe v21))))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                    (coe v27))))))
                                                     v9
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                     (coe
                                                        du_'9839''45'72_308329 (coe v0) (coe v28)
                                                        (coe v21) (coe v27) (coe v15) (coe v4))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                  (let v29
                                                         = coe
                                                             MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                           (coe v29))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))
                                                                       v26))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                    (coe v27)))))))
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
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))
                                                                    v26))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28)))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v27)))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28))
                                                                 v26)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28))
                                                              v26))
                                                        (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v27)))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v27))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v27)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v27))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v27))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                           v9
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26 v27))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                           v9
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26 v27))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                        (coe
                                                           MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                                           (coe v9)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           (coe v4) (coe v26) (coe v27)))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v28
                                    -> case coe v28 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                           -> coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (let v31
                                                       = coe
                                                           MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                      (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                         (coe v31))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                     v8 v20))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v29))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v29 v21))))))
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
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v8 v20))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v8))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v29 v21))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v8 v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v8 v20))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                         v29 v21))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v29)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v29 v21)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v29)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v29 v21))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                                   (coe v29) (coe v8) (coe v4) (coe v20) (coe v21))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                   (let v31
                                                          = coe
                                                              MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                         (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                            (coe v31))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v20)))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v29))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                     v29 v21))))))
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
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v20)))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v29))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v29 v21))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                         (coe
                                                            du_'9839''45'36_250291 (coe v20)
                                                            (coe v4))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v29 v21))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v29 v21)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v29 v21))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                                      (let v31
                                                             = coe
                                                                 MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                            (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                               (coe v31))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                 (coe v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                    (coe v20))))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                 (coe v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                    (coe v26))))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe v8)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v29)))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v30)))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                 v29 v21)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                 v30 v27)))))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                 (coe v20))))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                 (coe v26))))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe v8)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v29)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v29 v21)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v30 v27)))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v20))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v26)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe v8))
                                                            (coe
                                                               du_'9839''45'46_263555 (coe v26)
                                                               (coe v4))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v30 v27))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v29)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v29 v21)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              v30 v27))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v30)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v30 v27))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                            v8
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v20))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v26))))))
                                                            (coe
                                                               du_'9839''45'40_257417 (coe v0)
                                                               (coe v29) (coe v30) (coe v20)
                                                               (coe v26) (coe v14) (coe v4))
                                                            v15)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v29 v21)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v30 v27)))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v29)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_cong_142
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v29)))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v30)))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v29)))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v30)))))))
                                                               (coe
                                                                  du_initial'45'bag'45'cong_252
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v20))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v26))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v14))))
                                                            (coe
                                                               du_D'45'cong_384 (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v29 v21)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v30 v27)
                                                               (coe v15) (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                         (let v31
                                                                = coe
                                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                               (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                                  (coe v31))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v26)))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           v30 v27))))))
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
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v26)))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        v30 v27))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v26)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v30 v27))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        v30 v27)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                     v30 v27))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                                  v30 v8 v26 v27))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                                  v30 v8 v26 v27))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                               (coe
                                                                  MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                                                                  (coe v30) (coe v8) (coe v4)
                                                                  (coe v26) (coe v27)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v20))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                 (coe v26))))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe v9)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v20))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v26)))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe v9))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_'9839''45'3_31371
                                               (coe v4) (coe v26))
                                            (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                               (coe v27)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'8859'__262
                                            v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v20))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v26))))))
                                            (coe
                                               du_'9839''45'23_229783 (coe v0) (coe v20) (coe v26)
                                               (coe v14) (coe v4))
                                            (MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                               (coe v15)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300 v8 v9 v14 v15
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v18 v19 v20 v21
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190 v24 v25 v26 v27
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v28
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v29
                                    -> case coe v29 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                           -> coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (let v32
                                                       = coe
                                                           MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                      (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                         (coe v32))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v28))
                                                                  v20)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28)))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v30)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               (\ v33 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       v30 (coe v21 v33))))))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28))
                                                               v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28)))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            (\ v32 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v30 (coe v21 v32))))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28))
                                                               v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v28))
                                                            v20))
                                                      (\ v32 ->
                                                         coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           v30 (coe v21 v32)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v30)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            (\ v32 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v30 (coe v21 v32)))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v30)))
                                                      (\ v32 ->
                                                         coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              v30 (coe v21 v32)))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                                   (coe v30) (coe v4)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v28))
                                                   (coe v20) (coe v21))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                                   (let v32
                                                          = coe
                                                              MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                         (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                            (coe v32))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v28))
                                                                              v20)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe v28))
                                                                              v26))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v28))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v28))))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v31))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v33 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v30
                                                                                   (coe v21 v33)))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v33 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v31
                                                                                   (coe
                                                                                      v27
                                                                                      v33)))))))))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v28))
                                                                           v20)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v28))
                                                                           v26))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28))))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v31))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v30
                                                                                (coe v21 v32)))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v31
                                                                                (coe
                                                                                   v27 v32)))))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v28))
                                                                           v20)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v28))
                                                                           v26))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28)))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v28))
                                                               v26))
                                                         (\ v32 ->
                                                            coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              v31 (coe v27 v32)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v31))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v30
                                                                                (coe v21 v32)))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v31
                                                                                (coe v27 v32))))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v31)))
                                                         (\ v32 ->
                                                            coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 v31 (coe v27 v32)))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v28))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v28))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v28))
                                                                        v20)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v28))
                                                                        v26)))))
                                                         (coe
                                                            du_D'45'cong_384 (coe v0)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v28))
                                                               v20)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v28))
                                                               v26)
                                                            (coe v14) (coe v4))
                                                         v15)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     (\ v32 ->
                                                                        coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             v30 (coe v21 v32)))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     (\ v32 ->
                                                                        coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             v31 (coe v27 v32)))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v31)))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_cong_142
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v31)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v31)))))))
                                                            (coe
                                                               du_initial'45'bag'45'cong_252
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                     (coe v9)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe v9)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v28))
                                                                  v20)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v28))
                                                                  v26)
                                                               (coe v14)))
                                                         (\ v32 ->
                                                            coe
                                                              du_D'45'cong_384 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 v30 (coe v21 v32))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 v31 (coe v27 v32))
                                                              (coe v15 v32) (coe v4))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                            v31
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            v26 v27))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                            v31
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            v26 v27))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                         (coe
                                                            MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                                            (coe v31) (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v28))
                                                            (coe v26) (coe v27)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                         (let v29
                                                = coe
                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Effect.Choice.du__'8739'__24
                                               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v29))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                        (coe v9)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        (\ v30 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                v9 (coe v21 v30))))))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))
                                                        v20)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v9)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     (\ v29 ->
                                                        coe
                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                          (coe v4)
                                                          (coe
                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                             v9 (coe v21 v29))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))
                                                        v20)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                  (coe v4)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v28))
                                                     v20))
                                               (\ v29 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                    v9 (coe v21 v29)))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v9)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     (\ v29 ->
                                                        coe
                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                          (coe v4)
                                                          (coe
                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                             v9 (coe v21 v29)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                     (coe v9)))
                                               (\ v29 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                    (coe v4)
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                       v9 (coe v21 v29)))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                            (coe v9) (coe v4)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v28))
                                            (coe v20) (coe v21))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                            (let v29
                                                   = coe
                                                       MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                     (coe v29))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v28))
                                                              v20)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           (\ v30 ->
                                                              coe
                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                (coe v4)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                   (coe v21 v30))))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28)))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        (\ v29 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                (coe v21 v29))))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                     (coe v4)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v28))
                                                        v20))
                                                  (\ v29 ->
                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                       (coe v21 v29)))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        (\ v29 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                (coe v21 v29)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                  (coe du_'9839''45'144_447847 (coe v21) (coe v4))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        (\ v29 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                (coe v21 v29)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        (\ v29 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                (coe v21 v29)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                  (coe
                                                     (\ v29 ->
                                                        coe
                                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                               (let v29
                                                      = coe
                                                          MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                        (coe v29))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v28))
                                                                          v20)))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v28))
                                                                          v26))))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v28))))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe v9))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       (\ v30 ->
                                                                          coe
                                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                            (coe v4)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                               (coe v21 v30)))))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                    (coe
                                                                       (\ v30 ->
                                                                          coe
                                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                            (coe v4)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                               (coe
                                                                                  v27 v30)))))))))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v28))
                                                                       v20)))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))
                                                                       v26))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))))))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe v9))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    (\ v29 ->
                                                                       coe
                                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                         (coe v4)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                            (coe v21 v29)))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    (\ v29 ->
                                                                       coe
                                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                         (coe v4)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                            (coe v27 v29)))))))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v28))
                                                                       v20)))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v28))
                                                                       v26))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28)))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26))
                                                     (\ v29 ->
                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                          (coe v27 v29)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe v9))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    (\ v29 ->
                                                                       coe
                                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                         (coe v4)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                            (coe v21 v29)))))
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                 (coe
                                                                    (\ v29 ->
                                                                       coe
                                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                         (coe v4)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                            (coe v27 v29))))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                     (coe
                                                        du_'9839''45'154_460467 (coe v27)
                                                        (coe v4))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v28))))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v28))
                                                                    v20)))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))
                                                                    v26)))))
                                                     (coe
                                                        du_D'45'cong_384 (coe v0)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v28))
                                                           v20)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26)
                                                        (coe v14) (coe v4))
                                                     (\ v29 ->
                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                          (coe v15 v29)))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 (\ v29 ->
                                                                    coe
                                                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                      (coe v4)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                         (coe v21 v29)))))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 (\ v29 ->
                                                                    coe
                                                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                      (coe v4)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                         (coe v27 v29)))))))
                                                     v9
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                     (coe
                                                        du_'9839''45'150_454719 (coe v0) (coe v28)
                                                        (coe v21) (coe v27) (coe v15) (coe v4))))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                  (let v29
                                                         = coe
                                                             MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                           (coe v29))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v28))
                                                                    v26)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                              (coe
                                                                 (\ v30 ->
                                                                    coe
                                                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                      (coe v4)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                         (coe v27 v30))))))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28))
                                                                 v26)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28)))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              (\ v29 ->
                                                                 coe
                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                   (coe v4)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                      (coe v27 v29))))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v28))
                                                                 v26)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v28))
                                                              v26))
                                                        (\ v29 ->
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                             (coe v27 v29)))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              (\ v29 ->
                                                                 coe
                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                   (coe v4)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                      (coe v27 v29)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                                                        (\ v29 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                             (coe v4)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                (coe v27 v29)))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              (\ v29 ->
                                                                 coe
                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                   (coe v4)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                      (coe v27 v29)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              (\ v29 ->
                                                                 coe
                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                   (coe v4)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                      (coe v27 v29)))))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                        (coe
                                                           (\ v29 ->
                                                              coe
                                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v9
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26 v27))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                           v9
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           v26 v27))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                        (coe
                                                           MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                                           (coe v9) (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v28))
                                                           (coe v26) (coe v27)))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v28
                                    -> case coe v28 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                           -> coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (let v31
                                                       = coe
                                                           MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                      (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                         (coe v31))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                  v8 v20)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               (\ v32 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       v29 (coe v21 v32))))))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v8 v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                            (coe v8))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v29)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            (\ v31 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v29 (coe v21 v31))))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                               v8 v20)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                                            (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                         (coe v4)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                            v8 v20))
                                                      (\ v31 ->
                                                         coe
                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                           v29 (coe v21 v31)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v29)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            (\ v31 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v29 (coe v21 v31)))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe v29)))
                                                      (\ v31 ->
                                                         coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              v29 (coe v21 v31)))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                                   (coe v29) (coe v4) (coe v8) (coe v20) (coe v21))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                   (let v31
                                                          = coe
                                                              MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                         (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                            (coe v31))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v20))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v29)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  (\ v32 ->
                                                                     coe
                                                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                       (coe v4)
                                                                       (coe
                                                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                          v29 (coe v21 v32))))))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               (\ v31 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       v29 (coe v21 v31))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                         (coe
                                                            du_'9839''45'116_387123 (coe v20)
                                                            (coe v4))
                                                         (\ v31 ->
                                                            coe
                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                              v29 (coe v21 v31)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               (\ v31 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       v29 (coe v21 v31)))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe v29)))
                                                         (\ v31 ->
                                                            coe
                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                              (coe v4)
                                                              (coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 v29 (coe v21 v31)))))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               (\ v31 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                  (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                         (coe
                                                            (\ v31 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                                      (let v31
                                                             = coe
                                                                 MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                            (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                               (coe v31))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                 (coe v20))))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                              (coe v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                                 (coe v26)))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe v8)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v29)))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                              (coe v30))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              (\ v32 ->
                                                                                 coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                   (coe v4)
                                                                                   (coe
                                                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                      v29
                                                                                      (coe
                                                                                         v21
                                                                                         v32)))))
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                           (coe
                                                                              (\ v32 ->
                                                                                 coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                   (coe v4)
                                                                                   (coe
                                                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                      v30
                                                                                      (coe
                                                                                         v27
                                                                                         v32)))))))))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v20))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v26)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe v8)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v29)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v31 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v29
                                                                                   (coe v21 v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v31 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v30
                                                                                   (coe
                                                                                      v27
                                                                                      v31)))))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v20))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                           (coe v4)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                              (coe v26)))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe v8))
                                                            (coe
                                                               du_'9839''45'125_402213 (coe v26)
                                                               (coe v4))
                                                            (\ v31 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                 v30 (coe v27 v31)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v29)))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                           (coe v30))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v31 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v29
                                                                                   (coe v21 v31)))))
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                        (coe
                                                                           (\ v31 ->
                                                                              coe
                                                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                                (coe v4)
                                                                                (coe
                                                                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                   v30
                                                                                   (coe
                                                                                      v27
                                                                                      v31))))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe v30)))
                                                            (\ v31 ->
                                                               coe
                                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v30 (coe v27 v31)))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                            v8
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v20))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v26))))))
                                                            (coe
                                                               du_'9839''45'120_396083 (coe v0)
                                                               (coe v29) (coe v30) (coe v20)
                                                               (coe v26) (coe v14) (coe v4))
                                                            v15)
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v31 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v29
                                                                                (coe v21 v31)))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v31 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v30
                                                                                (coe v27 v31)))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v29)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_cong_142
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v29)))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v30)))))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v29)))
                                                                           (coe
                                                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                              (coe
                                                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                                 (coe v30)))))))
                                                               (coe
                                                                  du_initial'45'bag'45'cong_252
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8321'_6
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                                                        (coe v9)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v20))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v26))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v14))))
                                                            (\ v31 ->
                                                               coe
                                                                 du_D'45'cong_384 (coe v0)
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v29 (coe v21 v31))
                                                                 (coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v30 (coe v27 v31))
                                                                 (coe v15 v31) (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                         (let v31
                                                                = coe
                                                                    MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Effect.Choice.du__'8739'__24
                                                               (MAlonzo.Code.Effect.Monad.d_rawChoice_294
                                                                  (coe v31))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                        (coe v4)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                           (coe v26))))
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                        (coe v30)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        (\ v32 ->
                                                                           coe
                                                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                             (coe v4)
                                                                             (coe
                                                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                                v30
                                                                                (coe v27 v32))))))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     (\ v31 ->
                                                                        coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     (\ v31 ->
                                                                        coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             v30 (coe v27 v31))))))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     (\ v31 ->
                                                                        coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                                  (coe v4)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                     (coe v26)))
                                                               (\ v31 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                    v30 (coe v27 v31)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     (\ v31 ->
                                                                        coe
                                                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                          (coe v4)
                                                                          (coe
                                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                             v30 (coe v27 v31)))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                                     (coe v30)))
                                                               (\ v31 ->
                                                                  coe
                                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                                    (coe v4)
                                                                    (coe
                                                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                                       v30 (coe v27 v31)))))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9676'_312)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     (\ v31 ->
                                                                        coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                                  (coe
                                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                                     (coe v4)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                                        (coe v26))))
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                               (coe
                                                                  (\ v31 ->
                                                                     coe
                                                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                                  v30 v8 v26 v27))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                                               (coe v4)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                                  v30 v8 v26 v27))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                               (coe
                                                                  MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                               (coe
                                                                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                                                  (coe v30) (coe v4) (coe v8)
                                                                  (coe v26) (coe v27)))
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                    -> coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v20))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v26)))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe v9)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v20))))
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                        (coe
                                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                           (coe v4)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                              (coe v26)))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.du_flatten'8322'_12
                                               (coe v9))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_'9839''45'11_44717
                                               (coe v4) (coe v26))
                                            (\ v28 ->
                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                 (coe v27 v28)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C_'91'_'45'_'93'_'62''62''61'__300
                                            v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v20))))
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                        (coe v4)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                           (coe v26))))))
                                            (coe
                                               du_'9839''45'103_364131 (coe v0) (coe v20) (coe v26)
                                               (coe v14) (coe v4))
                                            (\ v28 ->
                                               MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22
                                                 (coe v15 v28)))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_nonempty_316 v11
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C_nonempty_198 v16 v17
                      -> coe
                           du_D'45'cong_384 (coe v0) (coe v14) (coe v17) (coe v11) (coe v4)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.TotalParserCombinators.Congruence.C_cast_340 v15
        -> case coe v1 of
             MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v17 v19 v20
               -> case coe v2 of
                    MAlonzo.Code.TotalParserCombinators.Parser.C_cast_210 v22 v24 v25
                      -> coe
                           du_D'45'cong_384 (coe v0) (coe v20) (coe v25) (coe v15) (coe v4)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.Sound.sound
d_sound_622 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
d_sound_622 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_sound_622 v0 v3 v4 v5 v6 v7
du_sound_622 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
du_sound_622 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.du_sound_56
      (coe v0) (coe v3) (coe v4)
      (coe
         du_sound'8242'_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))
-- TotalParserCombinators.Congruence.Sound._.sound′
d_sound'8242'_642 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18
d_sound'8242'_642 v0 ~v1 ~v2 v3 v4 v5 v6 v7 ~v8 ~v9 v10 v11 v12 v13
                  v14
  = du_sound'8242'_642 v0 v3 v4 v5 v6 v7 v10 v11 v12 v13 v14
du_sound'8242'_642 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18
du_sound'8242'_642 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.C__'8759'__40
      (coe
         du_initial'45'bag'45'cong_252 (coe v5) (coe v6) (coe v7) (coe v8)
         (coe v9) (coe v10))
      (coe
         du_'9839''45'178_570751 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe v5) (coe v8) (coe v9) (coe v10))
-- TotalParserCombinators.Congruence.Sound._.♯-23
d_'9839''45'23_229783 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'23_229783 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10
  = du_'9839''45'23_229783 v0 v4 v6 v8 v10
du_'9839''45'23_229783 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'23_229783 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))
         (coe v4))
-- TotalParserCombinators.Congruence.Sound._.♯-36
d_'9839''45'36_250291 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'36_250291 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 v12
  = du_'9839''45'36_250291 v6 v12
du_'9839''45'36_250291 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'36_250291 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._.♯-40
d_'9839''45'40_257417 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'40_257417 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8 ~v9 v10 ~v11
                      v12
  = du_'9839''45'40_257417 v0 v4 v5 v6 v8 v10 v12
du_'9839''45'40_257417 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'40_257417 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v5))
         (coe v6))
-- TotalParserCombinators.Congruence.Sound._.♯-46
d_'9839''45'46_263555 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'46_263555 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
                      ~v11 v12
  = du_'9839''45'46_263555 v8 v12
du_'9839''45'46_263555 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'46_263555 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._.♯-65
d_'9839''45'65_302085 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'65_302085 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
                      v11
  = du_'9839''45'65_302085 v6 v11
du_'9839''45'65_302085 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'65_302085 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._.♯-72
d_'9839''45'72_308329 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'72_308329 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11
  = du_'9839''45'72_308329 v0 v4 v6 v8 v10 v11
du_'9839''45'72_308329 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'72_308329 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4))
         (coe v5))
-- TotalParserCombinators.Congruence.Sound._.♯-76
d_'9839''45'76_313283 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'76_313283 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
                      v11
  = du_'9839''45'76_313283 v8 v11
du_'9839''45'76_313283 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'76_313283 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._.♯-103
d_'9839''45'103_364131 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'103_364131 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10
  = du_'9839''45'103_364131 v0 v4 v6 v8 v10
du_'9839''45'103_364131 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'103_364131 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))
         (coe v4))
-- TotalParserCombinators.Congruence.Sound._.♯-116
d_'9839''45'116_387123 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'116_387123 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 v12
  = du_'9839''45'116_387123 v6 v12
du_'9839''45'116_387123 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'116_387123 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._.♯-120
d_'9839''45'120_396083 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'120_396083 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8 ~v9 v10 ~v11
                       v12
  = du_'9839''45'120_396083 v0 v4 v5 v6 v8 v10 v12
du_'9839''45'120_396083 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'120_396083 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v5))
         (coe v6))
-- TotalParserCombinators.Congruence.Sound._.♯-125
d_'9839''45'125_402213 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'125_402213 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
                       ~v11 v12
  = du_'9839''45'125_402213 v8 v12
du_'9839''45'125_402213 ::
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'125_402213 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0)))
-- TotalParserCombinators.Congruence.Sound._._.♯-144
d_'9839''45'144_447847 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'144_447847 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
                       v11 v12
  = du_'9839''45'144_447847 v6 v11 v12
du_'9839''45'144_447847 ::
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'144_447847 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0 v2)))
-- TotalParserCombinators.Congruence.Sound._._.♯-150
d_'9839''45'150_454719 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'150_454719 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11
                       v12
  = du_'9839''45'150_454719 v0 v4 v6 v8 v10 v11 v12
du_'9839''45'150_454719 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'150_454719 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_D'45'cong_384 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v2 v6))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v3 v6))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v4 v6))
         (coe v5))
-- TotalParserCombinators.Congruence.Sound._._.♯-154
d_'9839''45'154_460467 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_'9839''45'154_460467 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10
                       v11 v12
  = du_'9839''45'154_460467 v8 v11 v12
du_'9839''45'154_460467 ::
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_'9839''45'154_460467 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
         (coe v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v0 v2)))
-- TotalParserCombinators.Congruence.Sound._._.♯-178
d_'9839''45'178_570751 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18
d_'9839''45'178_570751 v0 ~v1 ~v2 v3 v4 v5 v6 v7 ~v8 ~v9 ~v10 ~v11
                       v12 v13 v14 v15
  = du_'9839''45'178_570751 v0 v3 v4 v5 v6 v7 v12 v13 v14 v15
du_'9839''45'178_570751 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18
du_'9839''45'178_570751 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_sound'8242'_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5)
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v9) (coe v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v9) (coe v7))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v9) (coe v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v9) (coe v7))
         (coe
            du_D'45'cong_384 (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)))
