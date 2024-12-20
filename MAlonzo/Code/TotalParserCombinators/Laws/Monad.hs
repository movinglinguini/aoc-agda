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

module MAlonzo.Code.TotalParserCombinators.Laws.Monad where

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
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Derivative
import qualified MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.Monad._._>>=_
d__'62''62''61'__84 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__84
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Laws.Monad.left-distributive
d_left'45'distributive_110 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'distributive_110 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_left'45'distributive_110 v3 v4 v5 v6 v7 v8
du_left'45'distributive_110 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'distributive_110 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (\ v6 ->
         coe
           MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'62''62''61''45'left'45'distributive_638
           (coe v0) (coe v1) (coe v2))
      (coe
         du_'9839''45'3_5231 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- TotalParserCombinators.Laws.Monad.right-distributive
d_right'45'distributive_170 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'distributive_170 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_right'45'distributive_170 v3 v4 v5 v6 v7 v8
du_right'45'distributive_170 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'distributive_170 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v6
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
                          (\ v6 v7 v8 v9 v10 v11 v12 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v6 v7 v10 v11 v12))
                       (coe
                          (\ v6 v7 v8 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v6) (coe v7))
                                  (coe v8)))))
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v6 v7 v8 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v6) (coe v7))))) in
       coe
         (let v7
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
          coe
            (let v8
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
             coe
               (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v9))
                     (coe
                        MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                        (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                        erased erased
                        (let v10 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v10)) v0 v1))
                        v2))))))
      (coe
         du_'9839''45'31_49837 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- TotalParserCombinators.Laws.Monad.left-identity
d_left'45'identity_220 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'identity_220 ~v0 ~v1 ~v2 v3 v4 v5
  = du_left'45'identity_220 v3 v4 v5
du_left'45'identity_220 ::
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'identity_220 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v3
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
                          (\ v3 v4 v5 v6 v7 v8 v9 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v3 v4 v7 v8 v9))
                       (coe
                          (\ v3 v4 v5 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3) (coe v4))
                                  (coe v5)))))
                    (coe
                       (\ v3 v4 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v3 v4 v5 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v3) (coe v4))))) in
       coe
         (let v4
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v3) in
          coe
            (let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
             coe
               (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v6))
                     (coe
                        MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                        (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                        erased erased
                        (coe
                           MAlonzo.Code.Effect.Applicative.d_pure_32
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                 (coe
                                    MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                    (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                           erased v1)
                        v0))))))
      (coe du_'9839''45'65_99929 (coe v0) (coe v1) (coe v2))
-- TotalParserCombinators.Laws.Monad.right-identity
d_right'45'identity_250 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'identity_250 ~v0 ~v1 v2 v3
  = du_right'45'identity_250 v2 v3
du_right'45'identity_250 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'identity_250 v0 v1
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
                        (coe
                           MAlonzo.Code.Effect.Applicative.d_pure_32
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                 (coe
                                    MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                    (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                           erased)))))))
      (coe du_'9839''45'78_114815 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.Monad.associative
d_associative_286 ::
  () ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_associative_286 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_associative_286 v4 v5 v6 v7 v8 v9
du_associative_286 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_associative_286 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v6
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
                          (\ v6 v7 v8 v9 v10 v11 v12 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v6 v7 v10 v11 v12))
                       (coe
                          (\ v6 v7 v8 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v6) (coe v7))
                                  (coe v8)))))
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v6 v7 v8 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v6) (coe v7))))) in
       coe
         (let v7
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6) in
          coe
            (let v8
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
             coe
               (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v9))
                     (coe
                        MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                        (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                              (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                        erased erased v0
                        (\ v10 ->
                           coe
                             MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                             (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                             erased erased (coe v1 v10) v2)))))))
      (coe
         du_'9839''45'89_128307 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- TotalParserCombinators.Laws.Monad._.♯-3
d_'9839''45'3_5231 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'3_5231 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'9839''45'3_5231 v3 v4 v5 v6 v7 v8 v9
du_'9839''45'3_5231 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'3_5231 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v8)
                                      (coe v2 v8))))
                           v3)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v8)
                                   (coe v2 v8)))))))
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
                        (\ v8 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                   (coe v1 v8) (coe v2 v8) (coe v4 v8) (coe v5 v8)))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                                   (coe v2 v7))))
                        v3)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                                (coe v2 v7)))))))
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
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                (coe v1 v7) (coe v2 v7) (coe v4 v7) (coe v5 v7)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                                   (coe v2 v7))))
                        v3)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                                (coe v2 v7))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v6)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                                (coe v2 v7))))
                     v3))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe v1 v7) (coe v2 v7) (coe v4 v7) (coe v5 v7))))
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
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                (coe v1 v7) (coe v2 v7) (coe v4 v7) (coe v5 v7))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v6)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                          (coe v1 v7) (coe v2 v7) (coe v4 v7) (coe v5 v7))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v6)
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  (\ v7 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1 v7)
                       (coe v2 v7))))
            (coe v3)
            (coe
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                    (coe v1 v7) (coe v2 v7) (coe v4 v7) (coe v5 v7))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                  (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                  (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v9 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v9)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v9 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v9)))))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
               (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v8)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v8)))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     v4)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     v5))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v4 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v5 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v4 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v4 v7)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v5 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v5 v7)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_left'45'distributive_110
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6) (coe v3))
                  (coe v1) (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v6) (coe v3))
                  (coe v4) (coe v5))
               (coe
                  du_left'45'distributive_110 (coe v0)
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6) (coe v4 v7)))
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6) (coe v5 v7)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v4 v7)))
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v5 v7)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v4 v9)))))))
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v9)))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v8)))))))
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v8)))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v3))
                        v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v4 v7))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v3))
                        v5)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_swap_202
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v4 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v5 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     v4)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     v5)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v4 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v4 v7)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v5 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v6) (coe v5 v7))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3 v4))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3 v4))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3 v4))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v6)
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v3)
                           (coe v4))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v6)
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v3)
                           (coe v5))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
-- TotalParserCombinators.Laws.Monad._.♯-31
d_'9839''45'31_49837 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'31_49837 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'9839''45'31_49837 v3 v4 v5 v6 v7 v8 v9
du_'9839''45'31_49837 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'31_49837 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
                              v4))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v8 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0)
                                      (coe v1)))
                                (coe v5 v8))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
                           v4))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                             (coe v5 v7))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
                           v4))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v6)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
                        v4)))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                    (coe v5 v7)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                             (coe v5 v7)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v6)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                       (coe v5 v7)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
            (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
               v4)
            (coe v5))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v4))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           (\ v8 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6) (coe v5 v8)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v4))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6) (coe v5 v7)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v4))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6) (coe v3))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6) (coe v4))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v4)))
                  v5)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6) (coe v5 v7))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v1)))
                  (\ v7 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                       (coe v6) (coe v5 v7))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6) (coe v5 v7))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6) (coe v5 v7))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_distrib'45''8739'_160
                     (coe v0) (coe v1))
                  (coe
                     (\ v7 ->
                        coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v4)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v9)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v9)))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v4)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v8)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v8)))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v3))
                        v5)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v4))
                        v5))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v1))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                  (coe
                     du_right'45'distributive_170
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6) (coe v3))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6) (coe v4))
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v4))
                     (coe v5))
                  (coe
                     du_right'45'distributive_170 (coe v0) (coe v1)
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6) (coe v5 v7)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v1))
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                       (coe v6) (coe v3)))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v9 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v9)))))))
                        (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                       (coe v6) (coe v4)))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v9 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v9)))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v8 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v8)))))))
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v4)))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v8 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v8)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                              (coe v6) (coe v3))
                           v5)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v5 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v4)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v4)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                              (coe v6) (coe v4))
                           v5)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v1))
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v5 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_swap_202
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v3))
                        v5)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v4))
                        v5)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v1))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6) (coe v5 v7))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v4 v5))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v4 v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v4 v5)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v6)
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v3)
                              (coe v5))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v6)
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v4)
                              (coe v5))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))))
-- TotalParserCombinators.Laws.Monad._.♯-65
d_'9839''45'65_99929 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'65_99929 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'9839''45'65_99929 v3 v4 v5 v6
du_'9839''45'65_99929 ::
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'65_99929 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v4))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v3)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))))
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
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v5 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe v2 v5))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))))
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
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v3)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe v2 v4))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v3)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)))
               (\ v4 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                    (coe v2 v4)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v3)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe v2 v4)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (\ v4 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v3)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                       (coe v2 v4)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
            (coe v2))
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
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v3) (coe v2 v5)))))))
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
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4)))))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                       (coe v3) (coe v2 v4))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''62''62''61'_234
                  (coe v0) (coe v2))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
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
                        erased v1)
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))
                  (coe
                     (\ v4 ->
                        coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                       (coe v3) (coe v2 v4)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v3) (coe v2 v4)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v3) (coe v2 v4))))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
                     (\ v4 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v3) (coe v2 v4))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2 v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v3) (coe v2 v1))
                  (coe
                     du_left'45'identity_220
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v3) (coe v2 v4)))
                     (coe v1)
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v3) (coe v2 v4))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
-- TotalParserCombinators.Laws.Monad._.♯-78
d_'9839''45'78_114815 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'78_114815 ~v0 ~v1 v2 v3 v4
  = du_'9839''45'78_114815 v2 v3 v4
du_'9839''45'78_114815 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'78_114815 v0 v1 v2
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
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                           v1)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                   v4))))))))
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
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3))))))
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
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     v1))
               (let v3
                      = coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 in
                coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                       (coe v3 v4))))
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
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3)))))
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
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v3)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe v1)
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v2) (coe v1))
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2) (coe v1))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_right'45'identity_250
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''62''62''61'_302
                  (coe v0)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v2) (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v2) (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.Monad._.♯-89
d_'9839''45'89_128307 ::
  () ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'89_128307 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_'9839''45'89_128307 v4 v5 v6 v7 v8 v9 v10
du_'9839''45'89_128307 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'89_128307 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v6)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v8))
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                           v3)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v8))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))))))
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
                        (\ v8 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v8))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                   (coe v4 v8) v5))))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                        v3)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))))))
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
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                (coe v4 v7) v5))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                        v3)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v6)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                     v3))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                       (coe v4 v7) v5)))
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
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                          (coe v6)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                (coe v4 v7) v5)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                    (coe v6)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                          (coe v4 v7) v5)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v6)
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  (\ v7 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
            (coe v3)
            (coe
               (\ v7 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                    (coe v4 v7) v5)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                        (coe
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_foldr_216
                                   (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v4 v8))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v8))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v9 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                              (coe v6)
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                    (coe v1 v8))
                                                 (coe v5 v9))))))))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_map_22
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v7))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v8 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe v1 v7))
                                              (coe v5 v8))))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v6) (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v6) (coe v3))
                     v4)
                  v5)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_map_22
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v7))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v8 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe v1 v7))
                                              (coe v5 v8)))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))
                  (\ v7 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                   (coe v4 v7))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                     (coe v6)
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                        (coe v5 v8))))))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v6)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                   (coe v4 v7))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                (coe v4 v7)))
                          (\ v8 ->
                             coe
                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                               (coe v5 v8)))
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                     (coe v6)
                                     (coe
                                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                        (coe v5 v8)))))
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                          (\ v8 ->
                             coe
                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                               (coe v6)
                               (coe
                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                  (coe v5 v8)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_associative_286
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v6) (coe v3))
                  (coe v1) (coe v2)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v6) (coe v3))
                  (coe v4) (coe v5))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_map_22 (coe v2)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v7))))
                             (coe
                                MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                   (coe
                                      MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                erased erased (coe v1 v7)
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                     (coe v6) (coe v5 v8))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du_foldr_216
                                (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_map_22
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_apply_38
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v4 v7))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v8 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe v1 v7))
                                              (coe v5 v8)))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                  (coe
                     (\ v7 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                          (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                          (coe v4 v7) (coe v5)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v9)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v9))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               (\ v10 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                    (coe v6) (coe v5 v10))))))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v4 v8)))
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v8))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                 (coe v6) (coe v5 v9))))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v6) (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v6) (coe v3))
                        v4)
                     v5)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v4 v7)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                              (coe v6) (coe v5 v8))))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v4 v7)))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7)))
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v4 v7))
                             v5))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                              (coe v6) (coe v5 v8)))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   (\ v8 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v6) (coe v5 v8))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v7))
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                  (coe v6) (coe v5 v8))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                  (coe
                     du_left'45'distributive_110 (coe v0)
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7)))
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))))
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   (\ v8 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v6) (coe v5 v8))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7)))
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v4 v7))
                             v5))
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1 v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                (coe
                                   (\ v8 ->
                                      coe
                                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                        (coe v6) (coe v5 v8))))
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v7))
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                  (coe v6) (coe v5 v8))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Choice.du__'8739'__24
                        (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                       (coe v6) (coe v3)))))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22
                                          (coe
                                             (\ v9 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v9)))
                                          (coe v0))))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v9 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v9)))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe
                                          (\ v8 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v8)))
                                       (coe v0))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v8 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v8)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v6) (coe v3)))))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6) (coe v3)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                              (coe v6) (coe v3))
                           v4)
                        v5)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                            (coe v6) (coe v4 v7)))
                                    (coe v0))))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                            (coe v6) (coe v4 v7)))
                                    (coe v0))))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v4 v7))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v6) (coe v4 v7)))
                           v5)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                   (coe v1 v7)))
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v5 v7)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                        (coe
                           du_associative_286 (coe v0)
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v4 v7)))
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v6) (coe v4 v7)))
                           (coe v5))
                        (coe
                           du_associative_286 (coe v0) (coe v1)
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v6) (coe v5 v7)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                   (coe v1 v7)))
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v6) (coe v5 v7))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Choice.du__'8739'__24
                           (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                           (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Choice.du__'8739'__24
                                 (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v8))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3)))))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22
                                             (coe
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v6) (coe v4 v9)))
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v8 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v8)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                        (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                             (coe v6) (coe v3)))))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22
                                          (coe
                                             (\ v8 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v8)))
                                          (coe v0))))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                               (coe v6) (coe v4 v7)))
                                       (coe v0))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                       (coe v6) (coe v3)))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                    (coe v6) (coe v3))
                                 v4)
                              v5)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                               (coe v6) (coe v4 v7)))
                                       (coe v0))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v4 v7))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                      (coe v6) (coe v4 v7)))
                              v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v6) (coe v5 v7))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                   (coe v1 v7)))
                           (\ v7 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v6) (coe v5 v7))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_associative_154
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                               (coe v6) (coe v4 v7)))
                                       (coe v0))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                       (coe v6) (coe v3)))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                    (coe v6) (coe v3))
                                 v4)
                              v5)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
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
                                               (coe v6) (coe v4 v7)))
                                       (coe v0))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v4 v7))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                      (coe v6) (coe v4 v7)))
                              v5)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                      (coe v1 v7)))
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v6) (coe v5 v7)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                        (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Choice.du__'8739'__24
                              (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3)))
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                (\ v8 ->
                                                   coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v6) (coe v4 v8)))))))
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v8 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v8)))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                             (coe v6) (coe v3)))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v7 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v7)))))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                             (coe v6) (coe v3)))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v7 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v7)))))))
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                       (coe v6) (coe v3))
                                    v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                       (coe v0))
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                         (coe v6) (coe v4 v7))))
                              v5)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v6) (coe v5 v7))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                              (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                              (coe
                                 du_right'45'distributive_170
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7)))))
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                          (coe v6) (coe v3)))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                       (coe v6) (coe v3))
                                    v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                       (coe v0))
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                         (coe v6) (coe v4 v7)))
                                 (coe v5)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                         (coe v6) (coe v5 v7))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_distrib'45''62''62''61'_196
                                    (coe v0) (coe v1)))
                              (coe
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                           (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Choice.du__'8739'__24
                                 (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v7))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_foldr_216
                                             (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                   (coe v6) (coe v3))))
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                             (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                                (coe
                                                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                   (coe
                                                      MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                             erased erased v0
                                             (\ v8 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v8)))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v2)))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          (\ v8 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v5 v8)))))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                          (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                (coe
                                                   MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                          erased erased v0
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v7)))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                          (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                (coe
                                                   MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                          erased erased v0
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                             (coe v6) (coe v3)))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                                    (coe
                                       MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                       (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                          (coe
                                             MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                             (coe
                                                MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                       erased erased v0
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v4 v7)))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                             (coe v6) (coe v3)))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                          (coe v6) (coe v3))
                                       v4)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             (\ v7 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                  (coe v6) (coe v4 v7))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                          (coe v0))
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                            (coe v6) (coe v4 v7))))
                                 v5)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                            (coe v6) (coe v5 v7))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe
                                       MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                       (coe MAlonzo.Code.Data.List.Effectful.du_monad_24) erased
                                       erased v0 v1))
                                 (\ v7 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                      (coe v6) (coe v5 v7))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v2))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                (\ v7 ->
                                                   coe
                                                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                     (coe v6) (coe v4 v7)))))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                                (coe v6) (coe v3))))
                                       (coe
                                          MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
                                          (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                                (coe
                                                   MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
                                          erased erased v0
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                               (coe v6) (coe v4 v7)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe v6)
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                       (coe v3) (coe v4)))
                                 (coe
                                    (\ v7 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                              (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v6)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3
                                       v4)
                                    v5))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                 (coe v6)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3
                                       v4)
                                    v5))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                                             (coe v0))))
                                    (coe v6)
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3
                                       v4)
                                    (coe v5)))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))))))
