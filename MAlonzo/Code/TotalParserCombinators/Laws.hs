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

module MAlonzo.Code.TotalParserCombinators.Laws where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.TotalParserCombinators.Congruence
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid
import qualified MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Derivative
import qualified MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra
import qualified MAlonzo.Code.TotalParserCombinators.Laws.Monad
import qualified MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Laws.AdditiveMonoid.associative
d_associative_134 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_associative_134 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_associative_154
      v2 v3 v4 v5 v6 v7
-- TotalParserCombinators.Laws.AdditiveMonoid.commutative
d_commutative_136 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_commutative_136 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_commutative_94
      v2 v3 v4 v5
-- TotalParserCombinators.Laws.AdditiveMonoid.idempotent
d_idempotent_138 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_idempotent_138 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_idempotent_174
      v2 v3
-- TotalParserCombinators.Laws.AdditiveMonoid.left-identity
d_left'45'identity_140 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'identity_140 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_left'45'identity_114
      v2 v3
-- TotalParserCombinators.Laws.AdditiveMonoid.right-identity
d_right'45'identity_142 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'identity_142 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
      v2 v3
-- TotalParserCombinators.Laws.AdditiveMonoid.swap
d_swap_144 ::
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
d_swap_144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_swap_202
      v2 v3 v4 v5 v6 v7 v8 v9
-- TotalParserCombinators.Laws.D.D->>=
d_D'45''62''62''61'_148 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45''62''62''61'_148 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''62''62''61'_220
      v3 v4 v5 v6 v7
-- TotalParserCombinators.Laws.D.D-return-⊛
d_D'45'return'45''8859'_150 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45'return'45''8859'_150 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'45''8859'_192
      v3 v4 v5 v6
-- TotalParserCombinators.Laws.D.D-return⋆
d_D'45'return'8902'_152 ::
  () ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45'return'8902'_152 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45'return'8902'_90
      v2 v3
-- TotalParserCombinators.Laws.D.D-⊛
d_D'45''8859'_154 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_D'45''8859'_154 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_D'45''8859'_114
      v3 v4 v5 v6 v7
-- TotalParserCombinators.Laws.Return⋆.cong
d_cong_158 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_cong_158 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_cong_142 v3
      v4 v5
-- TotalParserCombinators.Laws.Return⋆.distrib->>=
d_distrib'45''62''62''61'_160 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''62''62''61'_160 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_distrib'45''62''62''61'_196
      v3 v4
-- TotalParserCombinators.Laws.Return⋆.distrib-∣
d_distrib'45''8739'_162 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''8739'_162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_distrib'45''8739'_160
      v2 v3
-- TotalParserCombinators.Laws.Return⋆.distrib-⊛
d_distrib'45''8859'_164 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_distrib'45''8859'_164 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ReturnStar.du_distrib'45''8859'_178
      v3 v4
-- TotalParserCombinators.Laws.ApplicativeFunctor.composition
d_composition_168 ::
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
d_composition_168 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_composition_422
      v4 v5 v6 v7 v8 v9
-- TotalParserCombinators.Laws.ApplicativeFunctor.homomorphism
d_homomorphism_170 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_homomorphism_170 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_homomorphism_358
      v3 v4
-- TotalParserCombinators.Laws.ApplicativeFunctor.identity
d_identity_172 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_identity_172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_identity_344
      v2 v3
-- TotalParserCombinators.Laws.ApplicativeFunctor.interchange
d_interchange_174 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_interchange_174 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_interchange_496
      v3 v4 v5
-- TotalParserCombinators.Laws.ApplicativeFunctor.left-distributive
d_left'45'distributive_176 ::
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
d_left'45'distributive_176 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_left'45'distributive_298
      v3 v4 v5 v6 v7 v8
-- TotalParserCombinators.Laws.ApplicativeFunctor.right-distributive
d_right'45'distributive_178 ::
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
d_right'45'distributive_178 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_right'45'distributive_328
      v3 v4 v5 v6 v7 v8
-- TotalParserCombinators.Laws.ApplicativeFunctor.⊛-in-terms-of->>=
d_'8859''45'in'45'terms'45'of'45''62''62''61'_180 ::
  () ->
  () ->
  () ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'8859''45'in'45'terms'45'of'45''62''62''61'_180 v0 v1 v2 v3 v4 v5
                                                  v6
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_'8859''45'in'45'terms'45'of'45''62''62''61'_262
      v3 v4 v5 v6
-- TotalParserCombinators.Laws.ApplicativeFunctor.Derivative.left-zero-⊛
d_left'45'zero'45''8859'_184 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'zero'45''8859'_184 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''8859'_126
      v3 v4
-- TotalParserCombinators.Laws.ApplicativeFunctor.Derivative.right-zero-⊛
d_right'45'zero'45''8859'_186 ::
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'zero'45''8859'_186 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''8859'_170
      v3 v4
-- TotalParserCombinators.Laws.<$>.>>=-∘
d_'62''62''61''45''8728'_190 ::
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
d_'62''62''61''45''8728'_190 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_'62''62''61''45''8728'_200
      v3 v5 v6 v7 v8
-- TotalParserCombinators.Laws.<$>.composition
d_composition_192 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_composition_192 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_composition_126
      v2 v4 v6 v7
-- TotalParserCombinators.Laws.<$>.homomorphism
d_homomorphism_194 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_homomorphism_194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_homomorphism_142
      v2 v3
-- TotalParserCombinators.Laws.<$>.identity
d_identity_196 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_identity_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_identity_120
      v2 v3
-- TotalParserCombinators.Laws.<$>.in-terms-of->>=
d_in'45'terms'45'of'45''62''62''61'_198 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_in'45'terms'45'of'45''62''62''61'_198 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_in'45'terms'45'of'45''62''62''61'_166
      v2 v4 v5
-- TotalParserCombinators.Laws.<$>.in-terms-of-⊛
d_in'45'terms'45'of'45''8859'_200 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_in'45'terms'45'of'45''8859'_200 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_in'45'terms'45'of'45''8859'_188
      v2 v4 v5
-- TotalParserCombinators.Laws.<$>.left-distributive
d_left'45'distributive_202 ::
  () ->
  () ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'distributive_202 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_left'45'distributive_152
      v2 v4 v5 v6 v7
-- TotalParserCombinators.Laws.<$>.zero
d_zero_204 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_zero_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.ApplicativeFunctor.du_zero_136
      v2
-- TotalParserCombinators.Laws.Monad.associative
d_associative_208 ::
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
d_associative_208 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_associative_286
      v4 v5 v6 v7 v8 v9
-- TotalParserCombinators.Laws.Monad.left-distributive
d_left'45'distributive_210 ::
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
d_left'45'distributive_210 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'distributive_110
      v3 v4 v5 v6 v7 v8
-- TotalParserCombinators.Laws.Monad.left-identity
d_left'45'identity_212 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'identity_212 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
      v3 v4 v5
-- TotalParserCombinators.Laws.Monad.right-distributive
d_right'45'distributive_214 ::
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
d_right'45'distributive_214 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_right'45'distributive_170
      v3 v4 v5 v6 v7 v8
-- TotalParserCombinators.Laws.Monad.right-identity
d_right'45'identity_216 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'identity_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_right'45'identity_250
      v2 v3
-- TotalParserCombinators.Laws.Monad.Derivative.left-zero->>=
d_left'45'zero'45''62''62''61'_220 ::
  () ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_left'45'zero'45''62''62''61'_220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''62''62''61'_234
      v3 v4
-- TotalParserCombinators.Laws.Monad.Derivative.right-zero->>=
d_right'45'zero'45''62''62''61'_222 ::
  () ->
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_right'45'zero'45''62''62''61'_222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_right'45'zero'45''62''62''61'_302
      v3 v4
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_
d__LeastUpperBoundOf__226 a0 a1 a2 a3 a4 a5 = ()
-- TotalParserCombinators.Laws.KleeneAlgebra._≲′_
d__'8818''8242'__228 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8818''8242'__228 = erased
-- TotalParserCombinators.Laws.KleeneAlgebra.*-continuous
d_'42''45'continuous_230 ::
  () ->
  () ->
  () ->
  () ->
  [[AgdaAny] -> AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.T__LeastUpperBoundOf__78
d_'42''45'continuous_230 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.du_'42''45'continuous_136
-- TotalParserCombinators.Laws.KleeneAlgebra.not-Kleene-algebra
d_not'45'Kleene'45'algebra_232 ::
  () ->
  AgdaAny ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [[AgdaAny]]) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116) ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [AgdaAny] ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_not'45'Kleene'45'algebra_232 = erased
-- TotalParserCombinators.Laws.KleeneAlgebra.≲⇔≲′
d_'8818''8660''8818''8242'_234 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8818''8660''8818''8242'_234 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.du_'8818''8660''8818''8242'_32
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_.least
d_least_238 ::
  MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.T__LeastUpperBoundOf__78 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (Integer ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_least_238 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.d_least_114
      (coe v0)
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_.upper-bound
d_upper'45'bound_240 ::
  MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.T__LeastUpperBoundOf__78 ->
  Integer ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_upper'45'bound_240 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra.d_upper'45'bound_106
      (coe v0)
-- TotalParserCombinators.Laws.Nonempty.zero
d_zero_248 ::
  () ->
  () ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_zero_248 ~v0 ~v1 = du_zero_248
du_zero_248 ::
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_zero_248
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (\ v0 -> coe du_'9839''45'0_1167)
-- TotalParserCombinators.Laws.Nonempty.nonempty-return
d_nonempty'45'return_258 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_nonempty'45'return_258 ~v0 ~v1 ~v2 = du_nonempty'45'return_258
du_nonempty'45'return_258 ::
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_nonempty'45'return_258
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (\ v0 -> coe du_'9839''45'1_2035)
-- TotalParserCombinators.Laws.Nonempty.nonempty′
d_nonempty'8242'_270 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_nonempty'8242'_270 ~v0 ~v1 ~v2 v3 = du_nonempty'8242'_270 v3
du_nonempty'8242'_270 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_nonempty'8242'_270 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                 (coe v1) (coe v0))))
      (coe MAlonzo.Code.TotalParserCombinators.Parser.C_token_136)
      (\ v1 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
           (coe v1) (coe v0))
-- TotalParserCombinators.Laws.Nonempty.nonempty-definable
d_nonempty'45'definable_284 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_nonempty'45'definable_284 ~v0 ~v1 ~v2 v3
  = du_nonempty'45'definable_284 v3
du_nonempty'45'definable_284 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_nonempty'45'definable_284 v0
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe du_'9839''45'4_4973 (coe v0))
-- TotalParserCombinators.Laws.Nonempty._.ret-D
d_ret'45'D_292 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
d_ret'45'D_292 ~v0 ~v1 ~v2 v3 v4 = du_ret'45'D_292 v3 v4
du_ret'45'D_292 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny -> MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
du_ret'45'D_292 v0 v1
  = coe
      MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                 (coe v2) (coe v0))))
      (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
      (\ v2 ->
         coe
           MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
           (coe v2) (coe v0))
-- TotalParserCombinators.Laws.Cast.correct
d_correct_316 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct_316 ~v0 ~v1 v2 v3 v4 ~v5 = du_correct_316 v2 v3 v4
du_correct_316 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct_316 v0 v1 v2
  = coe
      MAlonzo.Code.TotalParserCombinators.Congruence.C__'8759'__88
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.BagAndSetEquality.du_'91'_'93''45'Equality_36
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)))
         v0 v1 v2)
      (\ v3 -> coe du_'9839''45'7_9753)
-- TotalParserCombinators.Laws.Subst.correct
d_correct_338 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_correct_338
du_correct_338 ::
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct_338
  = coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
-- TotalParserCombinators.Laws.Subst.correct∞
d_correct'8734'_358 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_correct'8734'_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_correct'8734'_358
du_correct'8734'_358 ::
  MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_correct'8734'_358
  = coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98
-- TotalParserCombinators.Laws.Nonempty._.♯-0
d_'9839''45'0_1167 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'0_1167 ~v0 ~v1 ~v2 = du_'9839''45'0_1167
du_'9839''45'0_1167 ::
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'0_1167
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
-- TotalParserCombinators.Laws.Nonempty._.♯-1
d_'9839''45'1_2035 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'1_2035 ~v0 ~v1 ~v2 ~v3 = du_'9839''45'1_2035
du_'9839''45'1_2035 ::
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'1_2035
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
-- TotalParserCombinators.Laws.Nonempty._._.♯-4
d_'9839''45'4_4973 ::
  () ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'4_4973 ~v0 ~v1 ~v2 v3 v4 = du_'9839''45'4_4973 v3 v4
du_'9839''45'4_4973 ::
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'4_4973 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
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
                  (\ v2 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                       (coe v2) (coe v0)))))
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
                  (\ v2 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                       (coe v2) (coe v0))))
            (coe MAlonzo.Code.TotalParserCombinators.Parser.C_return_130 v1)
            (\ v2 ->
               coe
                 MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                 (coe v2) (coe v0)))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
            (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
            (coe
               MAlonzo.Code.TotalParserCombinators.Laws.Monad.du_left'45'identity_220
               (coe
                  (\ v2 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                       (coe v2) (coe v0)))
               (coe v1)
               (coe
                  (\ v2 ->
                     coe
                       MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                       (coe v2) (coe v0)))))
         (coe
            MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
            (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
             coe
               (coe
                  MAlonzo.Code.Effect.Choice.du__'8739'__24
                  (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
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
                           (\ v3 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v3) (coe v0)))))
                  (let v3 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                   coe
                     (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Effect.Empty.du_'8709'_24
                           (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v4)))))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
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
                        (\ v2 ->
                           coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                             (coe v2) (coe v0)))))
               (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (let v3 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Effect.Empty.du_'8709'_24
                        (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v3)))))
               (coe du_ret'45'D_292 (coe v0) (coe v1))
               (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
               (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
               (coe
                  MAlonzo.Code.TotalParserCombinators.Laws.AdditiveMonoid.du_right'45'identity_130
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
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2) (coe v0)))))
                  (coe du_ret'45'D_292 (coe v0) (coe v1))))
            (coe
               MAlonzo.Code.TotalParserCombinators.Congruence.C__'8773''10216'_'10217'__142
               (let v2 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
                coe
                  (coe
                     MAlonzo.Code.Effect.Choice.du__'8739'__24
                     (MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v2))
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
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v3) (coe v0)))))
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
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                   (coe v1)
                                   (coe
                                      MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                      (coe v3) (coe v0))))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Parser.C__'8739'__148
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
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v2) (coe v0)))))
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
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2) (coe v0))))))
                  (coe du_ret'45'D_292 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Parser.C__'62''62''61'__190
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                        (coe
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2) (coe v0)))))
                     (coe MAlonzo.Code.TotalParserCombinators.Parser.C_fail_134)
                     (\ v2 ->
                        coe
                          MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                          (coe v1)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                             (coe v2) (coe v0)))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8739'__206
                  (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
                  (coe
                     MAlonzo.Code.TotalParserCombinators.Congruence.C_sym_158
                     (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_90)
                     (coe
                        MAlonzo.Code.TotalParserCombinators.Laws.Derivative.du_left'45'zero'45''62''62''61'_234
                        (coe
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D'45'bag_24
                                (coe v1)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2) (coe v0))))
                        (coe
                           (\ v2 ->
                              coe
                                MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                (coe v1)
                                (coe
                                   MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
                                   (coe v2) (coe v0)))))))
               (coe
                  MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98))))
-- TotalParserCombinators.Laws.Cast._.♯-7
d_'9839''45'7_9753 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960) ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
d_'9839''45'7_9753 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'9839''45'7_9753
du_'9839''45'7_9753 ::
  MAlonzo.RTE.Infinity
    AgdaAny
    MAlonzo.Code.TotalParserCombinators.Congruence.T__'8764''91'_'93'P__44
du_'9839''45'7_9753
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe MAlonzo.Code.TotalParserCombinators.Congruence.C__'8718'_98)
