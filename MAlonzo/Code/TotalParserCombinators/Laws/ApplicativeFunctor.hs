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

module MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Functor
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Derivative
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Monad
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.ApplicativeFunctor._._<$>_
d__'60''36''62'__8 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d__'60''36''62'__8
  = coe
      MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
      (coe
         MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
         (coe
            MAlonzo.Code.Effect.Monad.d_rawApplicative_32
            (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
-- TotalParserCombinators.Laws.ApplicativeFunctor._._>>=_
d__'62''62''61'__10 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__10
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Laws.ApplicativeFunctor._._⊛_
d__'8859'__12 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__12
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- TotalParserCombinators.Laws.ApplicativeFunctor._.pure
d_pure_14 :: () -> AgdaAny -> [AgdaAny]
d_pure_14
  = coe
      MAlonzo.Code.Effect.Applicative.d_pure_32
      (coe
         MAlonzo.Code.Effect.Monad.d_rawApplicative_32
         (coe MAlonzo.Code.Data.List.Effectful.du_monad_24))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.identity
d_identity_120 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_identity_120 ~v0 ~v1 v2 v3 = du_identity_120 v2 v3
du_identity_120 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_identity_120 v0 v1
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
                        MAlonzo.Code.Data.List.Base.du_map_22 (coe (\ v6 -> v6))
                        (coe v0)))))))
      (coe du_'9839''45'0_1137 (coe v1))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.composition
d_composition_126 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_composition_126 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
  = du_composition_126 v2 v4 v6 v7
du_composition_126 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_composition_126 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v4
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
                          (\ v4 v5 v6 v7 v8 v9 v10 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v4 v5 v8 v9 v10))
                       (coe
                          (\ v4 v5 v6 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v5))
                                  (coe v6)))))
                    (coe
                       (\ v4 v5 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v4) (coe v5))))) in
       coe
         (let v5
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
          coe
            (let v6
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
             coe
               (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v7))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe (\ v8 -> coe v0 (coe v1 v8))) (coe v2)))))))
      (coe du_'9839''45'6_4791 (coe v0) (coe v1) (coe v3))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.zero
d_zero_136 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_zero_136 ~v0 ~v1 v2 ~v3 = du_zero_136 v2
du_zero_136 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_zero_136 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
            (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (let v2 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v1) in
                coe
                  (coe
                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                     (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v2)))))))
      (\ v1 -> coe du_'9839''45'10_8657 (coe v0))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.homomorphism
d_homomorphism_142 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_homomorphism_142 ~v0 ~v1 v2 v3 ~v4 = du_homomorphism_142 v2 v3
du_homomorphism_142 ::
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_homomorphism_142 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased v1)))
      (\ v2 -> coe du_'9839''45'11_10447 (coe v0))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.left-distributive
d_left'45'distributive_152 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'distributive_152 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_left'45'distributive_152 v2 v4 v5 v6 v7
du_left'45'distributive_152 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'distributive_152 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v5
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
                          (\ v5 v6 v7 v8 v9 v10 v11 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v5 v6 v9 v10 v11))
                       (coe
                          (\ v5 v6 v7 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v6))
                                  (coe v7)))))
                    (coe
                       (\ v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v5 v6 v7 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v5) (coe v6))))) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
             coe
               (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0)
                           (coe v2))))))))
      (coe du_'9839''45'12_13461 (coe v1) (coe v3) (coe v4))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.in-terms-of->>=
d_in'45'terms'45'of'45''62''62''61'_166 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_in'45'terms'45'of'45''62''62''61'_166 ~v0 ~v1 v2 ~v3 v4 v5
  = du_in'45'terms'45'of'45''62''62''61'_166 v2 v4 v5
du_in'45'terms'45'of'45''62''62''61'_166 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_in'45'terms'45'of'45''62''62''61'_166 v0 v1 v2
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
                     (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v0)))))))
      (coe du_'9839''45'18_21633 (coe v0) (coe v1) (coe v2))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.lemma
d_lemma_178 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_178 = erased
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.in-terms-of-⊛
d_in'45'terms'45'of'45''8859'_188 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_in'45'terms'45'of'45''8859'_188 ~v0 ~v1 v2 ~v3 v4 v5
  = du_in'45'terms'45'of'45''8859'_188 v2 v4 v5
du_in'45'terms'45'of'45''8859'_188 ::
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_in'45'terms'45'of'45''8859'_188 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_commutativeMonoid_578
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))
                  (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v0) (coe v1))))))
      (coe du_'9839''45'29_30197 (coe v0) (coe v1) (coe v2))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>.>>=-∘
d_'62''62''61''45''8728'_200 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'62''62''61''45''8728'_200 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 v8
  = du_'62''62''61''45''8728'_200 v3 v5 v6 v7 v8
du_'62''62''61''45''8728'_200 ::
  (AgdaAny -> [AgdaAny]) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'62''62''61''45''8728'_200 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0 (coe v3 v5))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_216
                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0 (coe v3 v5))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_216
                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         v2
         (\ v5 ->
            coe
              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
              (coe
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                 (coe v3 v5))
              v4))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
            (coe (\ v5 -> coe v0 (coe v3 v5))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0 (coe v3 v5))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_foldr_216
                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                 (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
                    (coe v0) (coe v3 v5) (coe v4)))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
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
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe v1))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
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
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe v1))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               v2
               (\ v5 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                    (coe v3 v5)))
            v4)
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_associative_286
            (coe v1)
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe v0) (coe v2)
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                    (coe v3 v5)))
            (coe v4))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v1
                  v3 v2)
               v4)
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe
                     MAlonzo.Code.Data.List.Base.du_foldr_216
                     (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v5)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                  (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     du_in'45'terms'45'of'45''62''62''61'_166 (coe v1) (coe v3)
                     (coe v2)))
               (coe
                  (\ v5 ->
                     coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor.pam
d_pam_226 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_pam_226 ~v0 ~v1 ~v2 v3 v4 v5 = du_pam_226 v3 v4 v5
du_pam_226 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_pam_226 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v0
      v2 v1
-- TotalParserCombinators.Laws.ApplicativeFunctor._⊛″_
d__'8859''8243'__242 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d__'8859''8243'__242 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du__'8859''8243'__242 v3 v4 v5 v6
du__'8859''8243'__242 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du__'8859''8243'__242 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v4)
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                    (coe v1)))))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1 v2)
      (coe
         du_pam_226
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
            v3))
-- TotalParserCombinators.Laws.ApplicativeFunctor.⊛-in-terms-of->>=
d_'8859''45'in'45'terms'45'of'45''62''62''61'_262 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'8859''45'in'45'terms'45'of'45''62''62''61'_262 ~v0 ~v1 ~v2 v3 v4
                                                  v5 v6
  = du_'8859''45'in'45'terms'45'of'45''62''62''61'_262 v3 v4 v5 v6
du_'8859''45'in'45'terms'45'of'45''62''62''61'_262 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'8859''45'in'45'terms'45'of'45''62''62''61'_262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (let v4
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
                          (\ v4 v5 v6 v7 v8 v9 v10 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'43''43''45'cong_422
                               (coe
                                  MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                               v4 v5 v8 v9 v10))
                       (coe
                          (\ v4 v5 v6 ->
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
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v5))
                                  (coe v6)))))
                    (coe
                       (\ v4 v5 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))))
                    (coe
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                            (MAlonzo.Code.Function.Related.Propositional.d_'8970'_'8971'_92
                               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90))
                            (coe
                               MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_'43''43''8596''43''43'_1058
                               (coe v4) (coe v5))))) in
       coe
         (let v5
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
          coe
            (let v6
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
             coe
               (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                     (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v7))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0))
                        (coe v1)))))))
      (coe du_'9839''45'61_57941 (coe v0) (coe v1) (coe v2) (coe v3))
-- TotalParserCombinators.Laws.ApplicativeFunctor.left-distributive
d_left'45'distributive_298 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'distributive_298 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_left'45'distributive_298 v3 v4 v5 v6 v7 v8
du_left'45'distributive_298 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_left'45'distributive_298 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2))))))
      (coe
         du__'8859''8243'__242
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
         (coe v3)
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v2 v4
            v5))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1) (coe v2)))
         (coe v3)
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v1 v2 v4
            v5))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1))
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1))
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2)))))
            v3
            (\ v6 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1))
                 (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2))
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v1
                    v6 v4)
                 (coe
                    MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v2
                    v6 v5)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
                                (coe v2)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1))
                       (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
            (coe
               (\ v6 ->
                  coe
                    du_left'45'distributive_152 (coe v1) (coe v6) (coe v2) (coe v5)
                    (coe v4))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                   (coe
                                      MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                erased erased v7 v1))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                   (coe
                                      MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                erased erased v7 v2))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v6 v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v6 v2))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v6 v1)))
                  v3 (coe du_pam_226 (coe v1) (coe v4)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v6 v2)))
                  v3 (coe du_pam_226 (coe v2) (coe v5))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'distributive_110
               (coe v0)
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                       (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                          (coe
                             MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                             (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                       erased erased v6 v1))
               (coe
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                       (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                          (coe
                             MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                             (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                       erased erased v6 v2))
               (coe v3) (coe du_pam_226 (coe v1) (coe v4))
               (coe du_pam_226 (coe v2) (coe v5)))
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
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) v3 v4)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe
                        du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v3)
                        (coe v4))
                     (coe
                        du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v3)
                        (coe v5))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.ApplicativeFunctor.right-distributive
d_right'45'distributive_328 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'distributive_328 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_right'45'distributive_328 v3 v4 v5 v6 v7 v8
du_right'45'distributive_328 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_right'45'distributive_328 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
      (coe
         du__'8859''8243'__242
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
            v4)
         (coe v5))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148 v0 v1 v3
            v4)
         (coe v5))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (coe
               MAlonzo.Code.Effect.Choice.du__'8739'__24
               (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v6))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v7 v2))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v7 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v7 v2))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                          (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                          erased erased v6 v2))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                          (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                          erased erased v6 v2))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                          (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                          erased erased v6 v2)))
               v3 (coe du_pam_226 (coe v2) (coe v5)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                          (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                          erased erased v6 v2)))
               v4 (coe du_pam_226 (coe v2) (coe v5))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_right'45'distributive_170
            (coe v0) (coe v1)
            (coe
               (\ v6 ->
                  coe
                    MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                    (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                       (coe
                          MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                          (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                    erased erased v6 v2))
            (coe v3) (coe v4) (coe du_pam_226 (coe v2) (coe v5)))
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
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v3 v5)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) v4 v5))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                  (coe
                     du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v3)
                     (coe v5))
                  (coe
                     du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)) (coe v4)
                     (coe v5))))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor.identity
d_identity_344 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_identity_344 ~v0 ~v1 v2 v3 = du_identity_344 v2 v3
du_identity_344 ::
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_identity_344 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (\ v3 -> v3))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
      (coe
         du__'8859''8243'__242
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (\ v2 -> v2))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
            (\ v2 -> v2))
         (coe v1))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (\ v2 -> v2))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
            (\ v2 -> v2))
         (coe v1))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
            (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
               (coe
                  MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
            erased erased (\ v2 -> v2) v0)
         (coe du_pam_226 (coe v0) (coe v1) (coe (\ v2 -> v2)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                    (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                       (coe
                          MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                          (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                    erased erased v2 v0))
            (coe (\ v2 -> v2)) (coe du_pam_226 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            v0 v1 (coe du_identity_120 (coe v0) (coe v1))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor.homomorphism
d_homomorphism_358 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_homomorphism_358 ~v0 ~v1 ~v2 v3 v4 = du_homomorphism_358 v3 v4
du_homomorphism_358 ::
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_homomorphism_358 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
      (coe
         du__'8859''8243'__242
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0)
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0)
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
            (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
               (coe
                  MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
            erased erased v0
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased v1))
         (coe
            du_pam_226
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased v1)
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
            (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                    (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                       (coe
                          MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                          (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                    erased erased v2
                    (coe
                       MAlonzo.Code.Effect.Applicative.d_pure_32
                       (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                          (coe
                             MAlonzo.Code.Effect.Monad.d_rawMonad_214
                             (coe
                                MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                                (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                       erased v1)))
            (coe v0)
            (coe
               du_pam_226
               (coe
                  MAlonzo.Code.Effect.Applicative.d_pure_32
                  (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonad_214
                        (coe
                           MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                           (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
                  erased v1)
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.Effect.Applicative.d_pure_32
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe
                     MAlonzo.Code.Effect.Monad.d_rawMonad_214
                     (coe
                        MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                        (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
               erased (coe v0 v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
               (coe v0 v1))
            (coe du_homomorphism_142 (coe v0) (coe v1))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor._⊛-cong_
d__'8859''45'cong__388 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d__'8859''45'cong__388 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
                       v12 v13
  = du__'8859''45'cong__388 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du__'8859''45'cong__388 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du__'8859''45'cong__388 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
      (coe
         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) v4 v5)
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
         (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
         (coe
            du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v4)
            (coe v5)))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8764''10216'_'10217'__120
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v3)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v3))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
            v6 v7)
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v3))
            (coe v8) (coe v9))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v10 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
             coe
               (coe
                  MAlonzo.Code.Effect.Applicative.du__'8859'__70
                  (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v10))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
            (coe
               du__'8859''8243'__242
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v6)
               (coe v7))
            (coe
               du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v6)
               (coe v7))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor.composition
d_composition_422 ::
  () ->
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_composition_422 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_composition_422 v4 v5 v6 v7 v8 v9
du_composition_422 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_composition_422 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
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
                              coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v7) (coe v1)))
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v7 ->
                                       coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v7) (coe v0)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
      (coe
         du__'8859''8243'__242
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22
                  (coe
                     (\ v6 ->
                        coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du_map_22
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                  (coe
                     MAlonzo.Code.Data.List.Base.du_foldr_216
                     (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v6 ->
                              coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                  (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
               v3)
            v4)
         (coe v5))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22
                  (coe
                     (\ v6 ->
                        coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                  (coe
                     MAlonzo.Code.Data.List.Base.du_map_22
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                  (coe
                     MAlonzo.Code.Data.List.Base.du_foldr_216
                     (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v6 ->
                              coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                  (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
               v3)
            v4)
         (coe v5))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
          coe
            (coe
               MAlonzo.Code.Effect.Applicative.du__'8859'__70
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v7))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                       (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_map_22
                                          (coe
                                             (\ v8 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Base.du_map_22 (coe v8)
                                                  (coe v0)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
         (coe
            du__'8859''8243'__242
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                            (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))))
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
            (coe
               du__'8859''8243'__242
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                  v3)
               (coe v4))
            (coe v5))
         (coe
            du__'8859''45'cong__388 (coe v2) (coe v2)
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22
                  (coe
                     (\ v6 ->
                        coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
             coe
               (coe
                  MAlonzo.Code.Effect.Applicative.du__'8859'__70
                  (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v7 ->
                                       coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v7) (coe v0)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                  v3)
               v4)
            (coe v5)
            (coe
               du__'8859''8243'__242
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                  v3)
               (coe v4))
            (coe v5)
            (coe
               du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                     (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                  v3)
               (coe v4))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
             coe
               (coe
                  MAlonzo.Code.Effect.Applicative.du__'8859'__70
                  (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                         coe
                           (coe
                              MAlonzo.Code.Effect.Applicative.du__'8859'__70
                              (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v7))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (let v8 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                          (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v8))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe v0)))))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
            (coe
               du__'8859''8243'__242
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                               coe
                                 (coe
                                    MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                    (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v7))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
               (coe
                  du__'8859''8243'__242
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v3))
                  (coe v4))
               (coe v5))
            (coe
               du__'8859''45'cong__388 (coe v2) (coe v2)
               (coe
                  MAlonzo.Code.Data.List.Base.du_foldr_216
                  (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                  (coe
                     MAlonzo.Code.Data.List.Base.du_map_22
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe
                                 (\ v6 ->
                                    coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v7))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                            (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                        v3))
                  (coe
                     du_pam_226
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_foldr_216
                                 (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                            (coe v0)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        v4)))
               (coe v5)
               (coe
                  du__'8859''8243'__242
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v3))
                  (coe v4))
               (coe v5)
               (coe
                  du__'8859''45'cong__388 (coe v1) (coe v1)
                  (coe
                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v0)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     v3)
                  (coe v4)
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v3))
                  (coe v4)
                  (coe
                     du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v3))
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
               (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (let v7 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                            coe
                              (coe
                                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                 (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v7))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                       (coe
                                          MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                          (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                             (coe
                                                MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                                (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                          erased erased
                                          (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                          v0)))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
               (coe
                  du__'8859''8243'__242
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                    (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                       (coe
                                          MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                          (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                    erased erased
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v0)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                           (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                 (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                           erased erased
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v0))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        du_pam_226 (coe v0) (coe v3)
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v4))
                  (coe v5))
               (coe
                  du__'8859''45'cong__388 (coe v2) (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Base.du_foldr_216
                     (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
                        (coe
                           MAlonzo.Code.Data.List.Base.du__'43''43'__32
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe v0)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                 (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                    (coe
                                       MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                       (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                 erased erased
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v0)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe v0)))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           du__'8859''8243'__242
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                           (coe v3)))
                     (coe
                        du_pam_226
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                    (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe v0)))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           v4)))
                  (coe v5)
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                           (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                              (coe
                                 MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                 (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                           erased erased
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v0))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe
                        du_pam_226 (coe v0) (coe v3)
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v4))
                  (coe v5)
                  (coe
                     du__'8859''45'cong__388 (coe v1) (coe v1)
                     (coe
                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     (coe
                        MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                        (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                           (coe
                              MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                              (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                        erased erased
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v0)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v6 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)))
                        (coe
                           du_pam_226
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              v3)))
                     (coe v4)
                     (coe
                        du_pam_226 (coe v0) (coe v3)
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216))
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
                        (coe
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                                (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                   (coe
                                      MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                                erased erased v6 v0))
                        (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                        (coe du_pam_226 (coe v0) (coe v3)))
                     (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
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
                                            MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe v1)))))
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                       (coe v0))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Data.List.Base.du_foldr_216
                           (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0)))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
                     (coe
                        du__'8859''8243'__242
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Data.List.Base.du_map_22
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) (coe v0)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v0
                           (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216) v3)
                        (coe v4))
                     (coe v5))
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe
                                            MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                            (coe v6))
                                         (coe v1)))
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe
                                            MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                            (coe v6))
                                         (coe v1)))
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe
                                         MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v6))
                                      (coe v1))))
                           v3
                           (let v6 = coe MAlonzo.Code.Function.Base.du__'8728''8242'__216 in
                            coe
                              (\ v7 ->
                                 let v8 = coe v6 v7 in
                                 coe
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                      v1 v8 v4))))
                        (\ v6 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v2
                             v6 v5))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v6 ->
                                 coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v6 ->
                                       coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe
                                            MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                            (coe v6))
                                         (coe v1)))
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                           (coe
                              du_'62''62''61''45''8728'_200
                              (coe
                                 (\ v6 ->
                                    coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v1)))
                              (coe v0) (coe v3)
                              (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216)
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                      v1 v6 v4))))
                        (coe
                           (\ v6 ->
                              coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe
                                               MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                               (coe v6))
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                 (coe v2))))))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe
                                               MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                               (coe v6))
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                 (coe v2)))))))
                           v3
                           (\ v6 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe
                                         MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v6))
                                      (coe v1)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      (\ v7 ->
                                         coe
                                           MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                           (coe v2))))
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                   v1
                                   (coe MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v6))
                                   v4)
                                (\ v7 ->
                                   coe
                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                     v2 v7 v5)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                           (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_associative_286
                              (coe v0)
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe
                                         MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v6))
                                      (coe v1)))
                              (coe
                                 (\ v6 ->
                                    coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v6) (coe v2)))
                              (coe v3)
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                      v1
                                      (coe
                                         MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v6))
                                      v4))
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                      v2 v6 v5))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                         (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                       (coe v6) (coe v7))
                                                    (coe v2)))
                                            (coe v1))))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                         (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                       (coe v6) (coe v7))
                                                    (coe v2)))
                                            (coe v1)))))
                              v3
                              (\ v6 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         (\ v7 ->
                                            coe
                                              MAlonzo.Code.Data.List.Base.du_map_22
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                 (coe v6) (coe v7))
                                              (coe v2))))
                                   v4
                                   (let v7
                                          = coe
                                              MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                              (coe v6) in
                                    coe
                                      (\ v8 ->
                                         let v9 = coe v7 v8 in
                                         coe
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                              v2 v9 v5)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_map_22
                                               (coe
                                                  MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                  (coe v6))
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                    (coe v2)))))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Data.List.Base.du_foldr_216
                                         (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                       (coe v6) (coe v7))
                                                    (coe v2)))
                                            (coe v1)))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                              (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                      (coe
                                         MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                      (coe
                                         du_'62''62''61''45''8728'_200
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                 (coe v2)))
                                         (coe v1) (coe v4)
                                         (coe
                                            MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                            (coe v6))
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                 v2 v7 v5))))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                            (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_map_22
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2))))
                                               (coe v1))))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                            (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_map_22
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2))))
                                               (coe v1)))))
                                 v3
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe v1))
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                    (coe v2)))))
                                      v4
                                      (\ v7 ->
                                         coe
                                           MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                              (coe v2))
                                           v6
                                           (coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                              v2 v7 v5))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe
                                                          MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                          (coe v6) (coe v7))
                                                       (coe v2)))))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                            (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_map_22
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2))))
                                               (coe v1)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                    (coe v0))
                                 (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                 (coe
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                       (coe v6) (coe v7))
                                                    (coe v2))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v7) (coe v2)))))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                         (coe
                                            (\ v7 ->
                                               coe
                                                 du_composition_126 (coe v6) (coe v7) (coe v2)
                                                 (coe v5))))))
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.Data.List.Base.du_foldr_216
                                               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_map_22
                                                  (coe
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe v6 v8)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                (coe v7) (coe v2)))))
                                                  (coe v1))))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.Data.List.Base.du_foldr_216
                                               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_map_22
                                                  (coe
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe v6 v8)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                (coe v7) (coe v2)))))
                                                  (coe v1)))))
                                    v3
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v6 v8)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2))))))
                                         v4
                                         (\ v7 ->
                                            coe
                                              MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22 (coe v7)
                                                    (coe v2)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                 (coe
                                                    (\ v8 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe v6 v8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                              (coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                 v2 v7 v5)
                                              (\ v8 ->
                                                 coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                                   (coe v6 v8)))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe v7) (coe v2))))))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.Data.List.Base.du_foldr_216
                                               (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_map_22
                                                  (coe
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe v6 v8)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                (coe v7) (coe v2)))))
                                                  (coe v1)))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2)))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_foldr_216
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe
                                                             (\ v8 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe v6 v8)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe v7) (coe v2))))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                            (coe
                                               (\ v7 ->
                                                  coe
                                                    du_in'45'terms'45'of'45''62''62''61'_166
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v7) (coe v2))
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                       v2 v7 v5))))))
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216
                                                  (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6 v7)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1))))))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216
                                                  (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6 v7)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1)))))))
                                       v3
                                       (\ v6 ->
                                          coe
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
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe v7) (coe v2)))
                                                     (coe v1))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v6 v7)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                            (coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe v7) (coe v2))))
                                               v4
                                               (\ v7 ->
                                                  coe
                                                    MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                    v2 v7 v5))
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                                 (coe v6 v7))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                (coe
                                                                   (\ v8 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe v6 v8)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216
                                                  (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6 v7)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1)))))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                       (coe
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_associative_286
                                               (coe v1)
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Data.List.Base.du_map_22
                                                       (coe v7) (coe v2)))
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v6 v7)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                               (coe v4)
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                       v2 v7 v5))
                                               (coe
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                                                       (coe v6 v7))))))
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe
                                                (\ v6 ->
                                                   coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1)))))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe
                                                (\ v6 ->
                                                   coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1))))))
                                          v3
                                          (\ v6 ->
                                             coe
                                               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_foldr_216
                                                  (coe MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe v7) (coe v2)))
                                                     (coe v1)))
                                               v6
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe v7) (coe v2))))
                                                  v4
                                                  (\ v7 ->
                                                     coe
                                                       MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                       v2 v7 v5))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe
                                                (\ v6 ->
                                                   coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_map_22
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.List.Base.du_map_22
                                                                      (coe v7) (coe v2)))
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           (\ v7 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                (coe v6 v7)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe
                                                (\ v6 ->
                                                   coe
                                                     MAlonzo.Code.Data.List.Base.du_map_22 (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1))))))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                          (coe
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                  (coe
                                                     MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                  (coe
                                                     du_in'45'terms'45'of'45''62''62''61'_166
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_map_22
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2)))
                                                           (coe v1)))
                                                     (coe v6)
                                                     (coe
                                                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              (\ v7 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe v7) (coe v2))))
                                                        v4
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                             v2 v7 v5))))))
                                       (coe
                                          MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.List.Base.du_map_22
                                                        (coe v6)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_map_22
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.List.Base.du_map_22
                                                                      (coe v7) (coe v2)))
                                                              (coe v1)))))))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.List.Base.du_map_22
                                                        (coe v6)
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_foldr_216
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_map_22
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.List.Base.du_map_22
                                                                      (coe v7) (coe v2)))
                                                              (coe v1))))))
                                             v3
                                             (\ v6 ->
                                                coe
                                                  MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_map_22
                                                        (coe
                                                           (\ v7 ->
                                                              coe
                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                (coe v7) (coe v2)))
                                                        (coe v1)))
                                                  v6
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           (\ v7 ->
                                                              coe
                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                (coe v7) (coe v2))))
                                                     v4
                                                     (\ v7 ->
                                                        coe
                                                          MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                                                          v2 v7 v5))))
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                          (coe
                                             MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                                   (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                                      (coe v6))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v2)))))))
                                             (coe
                                                du__'8859''8243'__242
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2))))
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe v2))
                                                   v4 v5))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                (coe
                                                   MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                (coe
                                                   du__'8859''45'cong__388
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2)))
                                                   (let v6
                                                          = coe
                                                              MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Effect.Applicative.du__'8859'__70
                                                         (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                                            (coe v6))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v2)))))
                                                   (coe v0) (coe v0) (coe v3)
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2))
                                                      v4 v5)
                                                   (coe v3)
                                                   (coe
                                                      du__'8859''8243'__242
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2))
                                                      (coe v4) (coe v5))
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                                                   (coe
                                                      du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2))
                                                      (coe v4) (coe v5))))
                                             (coe
                                                MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v2))))
                                                   v3
                                                   (coe
                                                      MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v2))
                                                      v4 v5))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                                                   (coe
                                                      MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                                                   (coe
                                                      du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                         (coe
                                                            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                                                            (coe
                                                               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe v2))))
                                                      (coe v3)
                                                      (coe
                                                         MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe v2))
                                                         v4 v5)))
                                                (coe
                                                   MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))))))))))))
-- TotalParserCombinators.Laws.ApplicativeFunctor.interchange
d_interchange_496 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_interchange_496 ~v0 ~v1 ~v2 v3 v4 v5
  = du_interchange_496 v3 v4 v5
du_interchange_496 ::
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_interchange_496 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
      (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
       coe
         (coe
            MAlonzo.Code.Effect.Applicative.du__'8859'__70
            (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v3))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
      (coe
         du__'8859''8243'__242
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe v1)
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2))
      (coe
         du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe v1)
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v2))
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v2)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v2)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            v1
            (\ v3 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                 (coe v3 v2)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Data.List.Base.du_map_22 (coe v3)
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                          (coe
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3 v2)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
            (coe (\ v3 -> coe du_homomorphism_142 (coe v3) (coe v2))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe (\ v3 -> coe v3 v2))
               (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160 v0
               (\ v3 -> coe v3 v2) v1)
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  du_in'45'terms'45'of'45''62''62''61'_166 (coe v0)
                  (coe (\ v3 -> coe v3 v2)) (coe v1)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe (\ v3 -> coe v3 v2))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v3 v0))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe (\ v3 -> coe v3 v2))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v3 v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                     (\ v3 -> coe v3 v2))
                  (coe du_pam_226 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Effect.Functor.d__'60''36''62'__30
                             (MAlonzo.Code.Effect.Applicative.d_rawFunctor_30
                                (coe
                                   MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                                   (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)))
                             erased erased v3 v0))
                     (coe (\ v3 -> coe v3 v2)) (coe du_pam_226 (coe v0) (coe v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe (\ v3 -> coe v3 v2))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe (\ v3 -> coe v3 v2))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                        (\ v3 -> coe v3 v2))
                     v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe (\ v3 -> coe v3 v2))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                           (\ v3 -> coe v3 v2))
                        (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-0
d_'9839''45'0_1137 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'0_1137 ~v0 ~v1 ~v2 v3 v4 = du_'9839''45'0_1137 v3 v4
du_'9839''45'0_1137 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'0_1137 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
            (coe v1) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v1) (coe v0))
         (coe
            du_identity_120
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v1) (coe v0))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v1) (coe v0)))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-6
d_'9839''45'6_4791 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'6_4791 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_'9839''45'6_4791 v2 v4 v7 v8
du_'9839''45'6_4791 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'6_4791 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2)))
            v0
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2))
               v1
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v3) (coe v2))))
         (coe
            du_composition_126 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v3) (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3) (coe v2)))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-10
d_'9839''45'10_8657 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'10_8657 ~v0 ~v1 v2 ~v3 ~v4 = du_'9839''45'10_8657 v2
du_'9839''45'10_8657 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'10_8657 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (let v2 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v1) in
             coe
               (coe
                  MAlonzo.Code.Effect.Empty.du_'8709'_24
                  (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v2)))))
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
         (coe du_zero_136 (coe v0))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-11
d_'9839''45'11_10447 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'11_10447 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_'9839''45'11_10447 v2
du_'9839''45'11_10447 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'11_10447 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (let v1 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
          coe
            (let v2 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v1) in
             coe
               (coe
                  MAlonzo.Code.Effect.Empty.du_'8709'_24
                  (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v2)))))
         (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
         (coe du_zero_136 (coe v0))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-12
d_'9839''45'12_13461 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'12_13461 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'9839''45'12_13461 v4 v6 v7 v8
du_'9839''45'12_13461 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'12_13461 v0 v1 v2 v3
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
                  MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v1)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe v0)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v1)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2))
               v0
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v1))
               v0
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v3) (coe v1))))
         (coe
            du_left'45'distributive_152
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v3) (coe v2))
            (coe v0)
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v3) (coe v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3) (coe v1))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3) (coe v2)))
         (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._._.♯-18
d_'9839''45'18_21633 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'18_21633 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_'9839''45'18_21633 v2 v4 v5 v6
du_'9839''45'18_21633 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'18_21633 v0 v1 v2 v3
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
                  MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2)))
               (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v6 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v6)))))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2)))
            (let v4 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (let v5 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Effect.Empty.du_'8709'_24
                     (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v5)))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2))
               v1
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v3) (coe v2)))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22 (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'60''36''62'__160
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2))
                  v1
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v3) (coe v2)))))
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
                           (coe v3) (coe v2)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1 v5)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v3) (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1 v4)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v3) (coe v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1 v4)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v3) (coe v2))
                  (\ v4 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Parser.C_return_130
                       (coe v1 v4)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe v0))
                  (\ v4 ->
                     coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_in'45'terms'45'of'45''62''62''61'_166
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v3) (coe v2))
                  (coe v1)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''62''62''61'_302
                     (coe v0)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0)))))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor.<$>._.♯-29
d_'9839''45'29_30197 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'29_30197 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_'9839''45'29_30197 v2 v4 v5 v6
du_'9839''45'29_30197 ::
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'29_30197 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                  (coe v3) (coe v2)))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0)
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3) (coe v2)))
         (coe
            du_in'45'terms'45'of'45''8859'_188 (coe v0)
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v3) (coe v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3) (coe v2)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v3)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0)
                  v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v3)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v0)
                  v2))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'45''8859'_192
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe v3) (coe v0) (coe v2)))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ApplicativeFunctor._.♯-61
d_'9839''45'61_57941 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'61_57941 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'9839''45'61_57941 v3 v4 v5 v6 v7
du_'9839''45'61_57941 ::
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'61_57941 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
                           (coe v4)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                              v2))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
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
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                           v2))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                     (coe v1))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe v0))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                        v3))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                        v2)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v4)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                     v2))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                  v3))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                        v3)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                  (coe v4)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                     v3))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
            (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                                    v2))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe v1))))))
                  (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                                    v3))))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
               (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v5))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v4)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                                 v2))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe v1))))))
               (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Applicative.du__'8859'__70
                     (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v5))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe v0))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v4)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                                 v3))))))
               (coe
                  du__'8859''8243'__242
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                           v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                        v2))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                     v3))
               (coe
                  du__'8859''8243'__242
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                           v3)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                        v3))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
               (coe
                  du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                           v2)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                        v2))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                     v3))
               (coe
                  du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                           v3)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                        v3))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v5))
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v4)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                       v1 v2))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe v1))))))
                     (let v6 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Applicative.du__'8859'__70
                           (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v6))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v4)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276
                                       v0 v3))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                                    v2))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe v1))))))
                  (let v5 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Applicative.du__'8859'__70
                        (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v5))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                                    v3))))))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v4)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                              v2)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1
                           v2))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                        v3))
                  (coe
                     du__'8859''8243'__242
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                           (coe v4)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                              v3)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v4)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                           v3))))
               (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe v1)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1 v2)
                        (coe
                           du_pam_226
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                              v3))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v4)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe v1)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1 v2)
                        (coe
                           du_pam_226
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                              v3))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v0)))
                        (coe v4)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Data.List.Base.du_map_22 (coe v5)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                                      (coe v1)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v1 v2)
                        (coe
                           du_pam_226
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9837''63'_276 v0
                              v3))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))))
