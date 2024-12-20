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

module MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar where

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
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
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
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.ReturnStar.ListMonad._>>=_
d__'62''62''61'__104 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__104
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Laws.ReturnStar.ListMonad._⊛_
d__'8859'__108 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__108
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Effect.Applicative.du__'8859'__70
           (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v0)))
-- TotalParserCombinators.Laws.ReturnStar.ListMonad.rawApplicative
d_rawApplicative_118 ::
  MAlonzo.Code.Effect.Applicative.T_RawApplicative_20
d_rawApplicative_118
  = coe
      MAlonzo.Code.Effect.Monad.d_rawApplicative_32
      (coe MAlonzo.Code.Data.List.Effectful.du_monad_24)
-- TotalParserCombinators.Laws.ReturnStar.cong
d_cong_142 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_cong_142 ~v0 ~v1 ~v2 v3 v4 v5 = du_cong_142 v3 v4 v5
du_cong_142 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_cong_142 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88 v2
      (coe du_'9839''45'0_913 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.ReturnStar.distrib-∣
d_distrib'45''8739'_160 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''8739'_160 ~v0 ~v1 v2 v3
  = du_distrib'45''8739'_160 v2 v3
du_distrib'45''8739'_160 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_distrib'45''8739'_160 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
      (coe du_'9839''45'1_4097 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.ReturnStar.distrib-⊛
d_distrib'45''8859'_178 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''8859'_178 ~v0 ~v1 ~v2 v3 v4
  = du_distrib'45''8859'_178 v3 v4
du_distrib'45''8859'_178 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_distrib'45''8859'_178 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monad_24 in
          coe
            (coe
               MAlonzo.Code.Effect.Applicative.du__'8859'__70
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v2)) v0 v1)))
      (coe du_'9839''45'3_9043 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.ReturnStar.distrib->>=
d_distrib'45''62''62''61'_196 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''62''62''61'_196 ~v0 ~v1 ~v2 v3 v4
  = du_distrib'45''62''62''61'_196 v3 v4
du_distrib'45''62''62''61'_196 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_distrib'45''62''62''61'_196 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe
            MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
            (coe MAlonzo.Code.Data.List.Effectful.du_monad_24) erased erased v0
            v1))
      (coe du_'9839''45'11_23939 (coe v0) (coe v1))
-- TotalParserCombinators.Laws.ReturnStar._.♯-0
d_'9839''45'0_913 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'0_913 ~v0 ~v1 ~v2 v3 v4 ~v5 v6
  = du_'9839''45'0_913 v3 v4 v6
du_'9839''45'0_913 ::
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'0_913 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
            (coe v2) (coe v0))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
               (coe v2)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe v1)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
               (coe v2)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                  (coe v1)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                  (coe v2) (coe v1)))
            (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
-- TotalParserCombinators.Laws.ReturnStar._.♯-1
d_'9839''45'1_4097 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'1_4097 ~v0 ~v1 v2 v3 v4 = du_'9839''45'1_4097 v2 v3 v4
du_'9839''45'1_4097 ::
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'1_4097 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
            (coe v2)
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v0) (coe v1)))
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
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v3))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v1)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                     (coe v2)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                        (coe v2) (coe v0))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                        (coe v2) (coe v1))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.ReturnStar._.♯-3
d_'9839''45'3_9043 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'3_9043 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'3_9043 v3 v4 v5
du_'9839''45'3_9043 ::
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'3_9043 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
            (coe v2)
            (coe
               MAlonzo.Code.Effect.Applicative.du__'8859'__70
               (MAlonzo.Code.Effect.Monad.d_rawApplicative_32
                  (coe MAlonzo.Code.Data.List.Effectful.du_monad_24))
               v0 v1))
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
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
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
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''8859'_126
                        (coe v1)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''8859'_170
                        (coe v0)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0)))))
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
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                       (coe v0)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v1)))))))
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
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du__'8859'flatten__26
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_flatten_18
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v2)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v1)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v2)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v2)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v1)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                              (coe v2) (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'8859'__378
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                              (coe v2) (coe v1)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v1))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'8859'__174
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v1))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)) (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v1))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))))
-- TotalParserCombinators.Laws.ReturnStar._.♯-11
d_'9839''45'11_23939 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'11_23939 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'9839''45'11_23939 v3 v4 v5
du_'9839''45'11_23939 ::
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'11_23939 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
            MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
            (coe v2)
            (coe
               MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
               (coe MAlonzo.Code.Data.List.Effectful.du_monad_24) erased erased v0
               v1))
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
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))
                  (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
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
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              (\ v4 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                     (\ v3 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                          (coe v1 v3)))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                        (coe v0))
                     (\ v3 ->
                        coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                  (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''62''62''61'_234
                        (coe v1)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v3))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''62''62''61'_302
                        (coe v0)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0)))))
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
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                         (coe v1 v4))))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v2)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.du_bind_50
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                      (coe v1 v3))))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                              (coe v2)
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                           (coe v2)
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0)))
                        (\ v3 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                             (coe v1 v3)))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v2)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                      (coe v1 v3)))))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                           (coe v0))
                        (\ v3 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v2)
                             (coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v3)))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                              (coe v2) (coe v0))
                           (coe
                              (\ v3 ->
                                 coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)))
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Congruence.du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe
                                 (\ v3 ->
                                    coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                         (coe v1 v3)))))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318
                              (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Parser.du_'9675'_318 (coe v0))
                           (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
                                   (coe v2) (coe v1 v3))))))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v3))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                        (coe v2)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0))
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (\ v3 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                (coe v1 v3))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                        (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                        (coe
                           MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)) (coe v2)
                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
                           (coe
                              MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                              (coe v0))
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Lib.du_return'8902'_446
                                   (coe v1 v3)))))
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))))
