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

module MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.AdditiveMonoid.commutative
d_commutative_94 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_commutative_94 ~v0 ~v1 v2 v3 v4 v5
  = du_commutative_94 v2 v3 v4 v5
du_commutative_94 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_commutative_94 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (\ v4 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
           (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
           (coe
              MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
              (coe v0) (coe v1)))
      (coe du_'9839''45'0_1299 (coe v2) (coe v3))
-- TotalParserCombinators.Laws.AdditiveMonoid.left-identity
d_left'45'identity_114 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'identity_114 ~v0 ~v1 v2 v3
  = du_left'45'identity_114 v2 v3
du_left'45'identity_114 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'identity_114 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'737''8658'id_352
            (let v2
                   = coe
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
                                  (coe v4)))) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
            (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                       (coe v2) (coe v3))))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))))
         v0)
      (coe du_'9839''45'1_3047 (coe v1))
-- TotalParserCombinators.Laws.AdditiveMonoid.right-identity
d_right'45'identity_130 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'identity_130 ~v0 ~v1 v2 v3
  = du_right'45'identity_130 v2 v3
du_right'45'identity_130 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'identity_130 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'737''8658'id_352
            (let v2
                   = coe
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
                                  (coe v4)))) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
            (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                    (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                       (coe v2) (coe v3))))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe
                       MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))))
         v0)
      (coe du_'9839''45'2_4429 (coe v1))
-- TotalParserCombinators.Laws.AdditiveMonoid.associative
d_associative_154 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_associative_154 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_associative_154 v2 v3 v4 v5 v6 v7
du_associative_154 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_associative_154 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))
            (coe v2)))
      (coe du_'9839''45'3_6971 (coe v3) (coe v4) (coe v5))
-- TotalParserCombinators.Laws.AdditiveMonoid.idempotent
d_idempotent_174 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_idempotent_174 ~v0 ~v1 v2 v3 = du_idempotent_174 v2 v3
du_idempotent_174 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_idempotent_174 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (\ v2 ->
         coe
           MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'idempotent_620
           (coe v0))
      (coe du_'9839''45'4_8871 (coe v1))
-- TotalParserCombinators.Laws.AdditiveMonoid.swap
d_swap_202 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_swap_202 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9
  = du_swap_202 v2 v3 v4 v5 v6 v7 v8 v9
du_swap_202 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_swap_202 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
       coe
         (coe
            MAlonzo.Code.Effect.Choice.du__'8739'__24
            (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v0
            (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v1
                  (let v10 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v10)) v2 v3))))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0
         (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1
               (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v2 v3))))
         v4
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1
            (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v2 v3))
            v5
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v3 v6
               v7)))
      (coe
         du_associative_154 (coe v0) (coe v1)
         (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v2 v3))
         (coe v4) (coe v5)
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v3 v6
            v7))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v0
               (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v2
                     (let v10 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v10)) v1 v3))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0
            (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v2
                  (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v1 v3))))
            v4
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2
               (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1 v3))
               v6
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v3 v5
                  v7)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                     (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v1 v2))
                     v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1 v2))
                  v3
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v2 v5
                     v6)
                  v7)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     du_associative_154 (coe v1) (coe v2) (coe v3) (coe v5) (coe v6)
                     (coe v7)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                        (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v2 v1))
                        v3))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v2 v1))
                     v3
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2 v1 v6
                        v5)
                     v7)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe du_commutative_94 (coe v1) (coe v2) (coe v5) (coe v6))
                     (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v2
                           (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Choice.du__'8739'__24
                                 (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v1 v3))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v2
                        (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1 v3))
                        v6
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v3 v5
                           v7))
                     (coe
                        du_associative_154 (coe v2) (coe v1) (coe v3) (coe v6) (coe v5)
                        (coe v7))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                  (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v0 v2))
                  (let v9 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v9)) v1 v3))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v0 v2))
               (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1 v3))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v2 v4
                  v6)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v3 v5
                  v7))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  du_associative_154 (coe v0) (coe v2)
                  (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8)) v1 v3))
                  (coe v4) (coe v6)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v3 v5
                     v7)))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.AdditiveMonoid._.♯-0
d_'9839''45'0_1299 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'0_1299 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'9839''45'0_1299 v4 v5 v6
du_'9839''45'0_1299 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'0_1299 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_commutative_94
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v2) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v2) (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v2) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v2) (coe v1)))
-- TotalParserCombinators.Laws.AdditiveMonoid._.♯-1
d_'9839''45'1_3047 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'1_3047 ~v0 ~v1 ~v2 v3 v4 = du_'9839''45'1_3047 v3 v4
du_'9839''45'1_3047 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'1_3047 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_left'45'identity_114
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v1) (coe v0)))
-- TotalParserCombinators.Laws.AdditiveMonoid._.♯-2
d_'9839''45'2_4429 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'2_4429 ~v0 ~v1 ~v2 v3 v4 = du_'9839''45'2_4429 v3 v4
du_'9839''45'2_4429 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'2_4429 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_right'45'identity_130
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v1) (coe v0)))
-- TotalParserCombinators.Laws.AdditiveMonoid._.♯-3
d_'9839''45'3_6971 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'3_6971 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'9839''45'3_6971 v5 v6 v7 v8
du_'9839''45'3_6971 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'3_6971 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_associative_154
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v3) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v3) (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v3) (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v3) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v3) (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v3) (coe v2)))
-- TotalParserCombinators.Laws.AdditiveMonoid._.♯-4
d_'9839''45'4_8871 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'4_8871 ~v0 ~v1 ~v2 v3 v4 = du_'9839''45'4_8871 v3 v4
du_'9839''45'4_8871 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'4_8871 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_idempotent_174
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v1) (coe v0)))
