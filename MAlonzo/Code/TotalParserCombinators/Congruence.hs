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

module MAlonzo.Code.TotalParserCombinators.Congruence where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.TotalParserCombinators.CoinductiveEquality
import qualified MAlonzo.Code.TotalParserCombinators.Derivative.Definition
import qualified MAlonzo.Code.TotalParserCombinators.Parser

-- TotalParserCombinators.Congruence.flatten₁
d_flatten'8321'_6 ::
  () -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_flatten'8321'_6 ~v0 v1 = du_flatten'8321'_6 v1
du_flatten'8321'_6 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_flatten'8321'_6 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence.flatten₂
d_flatten'8322'_12 ::
  () -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_flatten'8322'_12 ~v0 v1 = du_flatten'8322'_12 v1
du_flatten'8322'_12 ::
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_flatten'8322'_12 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence._≅P_
d__'8773'P__24 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8773'P__24 = erased
-- TotalParserCombinators.Congruence._≈P_
d__'8776'P__34 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8776'P__34 = erased
-- TotalParserCombinators.Congruence._∼[_]P_
d__'8764''91'_'93'P__44 a0 a1 a2 a3 a4 a5 a6 = ()
data T__'8764''91'_'93'P__44
  = C__'8759'__88 (AgdaAny -> AgdaAny)
                  (AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'P__44) |
    C__'8718'_98 |
    C__'8764''10216'_'10217'__120 [AgdaAny]
                                  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
                                  T__'8764''91'_'93'P__44 T__'8764''91'_'93'P__44 |
    C__'8773''10216'_'10217'__142 [AgdaAny]
                                  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116
                                  T__'8764''91'_'93'P__44 T__'8764''91'_'93'P__44 |
    C_sym_158 MAlonzo.Code.Function.Related.Propositional.T_SymmetricKind_86
              T__'8764''91'_'93'P__44 |
    C_return_170 | C_fail_176 | C_token_180 |
    C__'8739'__206 T__'8764''91'_'93'P__44 T__'8764''91'_'93'P__44 |
    C__'60''36''62'__230 T__'8764''91'_'93'P__44 |
    C_'91'_'45'_'93'_'8859'__262 (Maybe
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                 (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) AgdaAny AgdaAny |
    C_'91'_'45'_'93'_'62''62''61'__300 (Maybe
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) AgdaAny
                                       (AgdaAny -> AgdaAny) |
    C_nonempty_316 T__'8764''91'_'93'P__44 |
    C_cast_340 T__'8764''91'_'93'P__44
-- TotalParserCombinators.Congruence.∞⟨_⟩_∼[_]P_
d_'8734''10216'_'10217'_'8764''91'_'93'P__58 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  () ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  AgdaAny -> ()
d_'8734''10216'_'10217'_'8764''91'_'93'P__58 = erased
-- TotalParserCombinators.Congruence.[_-_-_-_]_⊛_
d_'91'_'45'_'45'_'45'_'93'_'8859'__378 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T__'8764''91'_'93'P__44 ->
  T__'8764''91'_'93'P__44 -> T__'8764''91'_'93'P__44
d_'91'_'45'_'45'_'45'_'93'_'8859'__378 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                       ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'91'_'45'_'45'_'45'_'93'_'8859'__378 v4 v5 v6 v7 v12 v13
du_'91'_'45'_'45'_'45'_'93'_'8859'__378 ::
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny -> AgdaAny] ->
  T__'8764''91'_'93'P__44 ->
  T__'8764''91'_'93'P__44 -> T__'8764''91'_'93'P__44
du_'91'_'45'_'45'_'45'_'93'_'8859'__378 v0 v1 v2 v3 v4 v5
  = coe
      C_'91'_'45'_'93'_'8859'__262
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
      v4 v5
-- TotalParserCombinators.Congruence.[_-_-_-_]_>>=_
d_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  () ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T__'8764''91'_'93'P__44 ->
  (AgdaAny -> T__'8764''91'_'93'P__44) -> T__'8764''91'_'93'P__44
d_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422 ~v0 ~v1 ~v2 ~v3 v4 v5
                                             v6 v7 ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422 v4 v5 v6 v7 v12 v13
du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422 ::
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  T__'8764''91'_'93'P__44 ->
  (AgdaAny -> T__'8764''91'_'93'P__44) -> T__'8764''91'_'93'P__44
du_'91'_'45'_'45'_'45'_'93'_'62''62''61'__422 v0 v1 v2 v3 v4 v5
  = coe
      C_'91'_'45'_'93'_'62''62''61'__300
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
      v4 v5
-- TotalParserCombinators.Congruence.complete
d_complete_450 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> T__'8764''91'_'93'P__44
d_complete_450 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_complete_450 v0 v3 v4 v5 v6 v7
du_complete_450 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny -> [AgdaAny] -> AgdaAny) -> T__'8764''91'_'93'P__44
du_complete_450 v0 v1 v2 v3 v4 v5
  = coe
      du_complete'8242'_470 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v0) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.du_complete_104
         (coe v0) (coe v3) (coe v4) (coe v5))
-- TotalParserCombinators.Congruence._.complete′
d_complete'8242'_470 ::
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
  MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18 ->
  T__'8764''91'_'93'P__44
d_complete'8242'_470 v0 ~v1 ~v2 v3 v4 v5 v6 v7 ~v8 ~v9 ~v10 ~v11
                     v12 v13 v14
  = du_complete'8242'_470 v0 v3 v4 v5 v6 v7 v12 v13 v14
du_complete'8242'_470 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18 ->
  T__'8764''91'_'93'P__44
du_complete'8242'_470 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.C__'8759'__40 v9 v10
        -> coe
             C__'8759'__88 v9
             (coe
                du_'9839''45'8_36625 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Congruence._._.♯-8
d_'9839''45'8_36625 ::
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
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'P__44
d_'9839''45'8_36625 v0 ~v1 ~v2 v3 v4 v5 v6 v7 ~v8 ~v9 ~v10 ~v11 v12
                    v13 ~v14 v15 v16
  = du_'9839''45'8_36625 v0 v3 v4 v5 v6 v7 v12 v13 v15 v16
du_'9839''45'8_36625 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   MAlonzo.RTE.Infinity
     AgdaAny
     MAlonzo.Code.TotalParserCombinators.CoinductiveEquality.T__'8764''91'_'93'c__18) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T__'8764''91'_'93'P__44
du_'9839''45'8_36625 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C_'9839'__16
      (coe
         du_complete'8242'_470 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5)
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v9) (coe v6))
         (coe
            MAlonzo.Code.TotalParserCombinators.Derivative.Definition.du_D_154
            (coe v9) (coe v7))
         (coe
            MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v8 v9)))
