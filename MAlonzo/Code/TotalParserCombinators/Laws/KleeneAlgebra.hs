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

module MAlonzo.Code.TotalParserCombinators.Laws.KleeneAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.TotalParserCombinators.Lib
import qualified MAlonzo.Code.TotalParserCombinators.Parser
import qualified MAlonzo.Code.TotalParserCombinators.Semantics

-- TotalParserCombinators.Laws.KleeneAlgebra._≲′_
d__'8818''8242'__14 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 -> ()
d__'8818''8242'__14 = erased
-- TotalParserCombinators.Laws.KleeneAlgebra.≲⇔≲′
d_'8818''8660''8818''8242'_32 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8818''8660''8818''8242'_32 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8818''8660''8818''8242'_32
du_'8818''8660''8818''8242'_32 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8818''8660''8818''8242'_32
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
              (coe du_helper_44 (coe v0) (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
              (\ v1 v2 v3 ->
                 coe
                   MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0 v1 v2)
                   (coe
                      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                      v3))))
-- TotalParserCombinators.Laws.KleeneAlgebra._.helper
d_helper_44 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_helper_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_helper_44 v6 v7 v8 v9
du_helper_44 ::
  (AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_helper_44 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40 v11
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1724
             (coe
                MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
             v0 v1 v2 v11
      MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_
d__LeastUpperBoundOf__78 a0 a1 a2 a3 a4 a5 = ()
data T__LeastUpperBoundOf__78
  = C__LeastUpperBoundOf_'46'constructor_29087 (Integer ->
                                                AgdaAny ->
                                                [AgdaAny] ->
                                                MAlonzo.Code.Function.Bundles.T_Func_714)
                                               ([AgdaAny] ->
                                                MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
                                                (Integer ->
                                                 AgdaAny ->
                                                 [AgdaAny] ->
                                                 MAlonzo.Code.Function.Bundles.T_Func_714) ->
                                                AgdaAny ->
                                                [AgdaAny] ->
                                                MAlonzo.Code.Function.Bundles.T_Func_714)
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_.upper-bound
d_upper'45'bound_106 ::
  T__LeastUpperBoundOf__78 ->
  Integer ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_upper'45'bound_106 v0
  = case coe v0 of
      C__LeastUpperBoundOf_'46'constructor_29087 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra._LeastUpperBoundOf_.least
d_least_114 ::
  T__LeastUpperBoundOf__78 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (Integer ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714
d_least_114 v0
  = case coe v0 of
      C__LeastUpperBoundOf_'46'constructor_29087 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra.*-continuous
d_'42''45'continuous_136 ::
  () ->
  () ->
  () ->
  () ->
  [[AgdaAny] -> AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  T__LeastUpperBoundOf__78
d_'42''45'continuous_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_'42''45'continuous_136
du_'42''45'continuous_136 :: T__LeastUpperBoundOf__78
du_'42''45'continuous_136
  = coe
      C__LeastUpperBoundOf_'46'constructor_29087
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
              (\ v1 v2 v3 -> coe du_upper'45'bound_160 (coe v0) v3)))
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
              (\ v3 v4 v5 -> coe du_least_176 (coe v2) v5)))
-- TotalParserCombinators.Laws.KleeneAlgebra._.upper-bound
d_upper'45'bound_160 ::
  () ->
  () ->
  () ->
  () ->
  [[AgdaAny] -> AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  Integer ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_upper'45'bound_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
                     ~v11 v12
  = du_upper'45'bound_160 v9 v12
du_upper'45'bound_160 ::
  Integer ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_upper'45'bound_160 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v4 v5 v6 v7 v12 v13
        -> case coe v12 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v16 v17 v18 v19 v24 v25
               -> coe
                    MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                    (coe v16 v17) (coe v5)
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v18) (coe v19))
                    (coe v7)
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                       (coe v16) (coe v17) (coe v18) (coe v19) (coe v24)
                       (coe
                          MAlonzo.Code.Function.Bundles.d_to_1724
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Lib.du_'8593''8818''8902'_352
                             (coe v0))
                          v17 v19 v25))
                    (coe v13)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra._.least
d_least_176 ::
  () ->
  () ->
  () ->
  () ->
  [[AgdaAny] -> AgdaAny -> AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  (Integer ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_least_176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
            ~v13 v14
  = du_least_176 v11 v14
du_least_176 ::
  (Integer ->
   AgdaAny ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_least_176 v0 v1
  = case coe v1 of
      MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v4 v5 v6 v7 v12 v13
        -> case coe v12 of
             MAlonzo.Code.TotalParserCombinators.Semantics.C__'8859'__102 v16 v17 v18 v19 v24 v25
               -> let v26
                        = coe
                            MAlonzo.Code.TotalParserCombinators.Lib.du_helper_414 (coe v17)
                            (coe
                               MAlonzo.Code.TotalParserCombinators.Lib.du_sound_118 (coe v25)) in
                  coe
                    (case coe v26 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                         -> case coe v28 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                -> case coe v30 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                       -> let v33
                                                = coe
                                                    MAlonzo.Code.TotalParserCombinators.Semantics.C_'60''36''62'__76
                                                    v29 v32 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_to_1724
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
                                               (coe v0 v27) (coe v16 v17 v5)
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                     (coe v18) (coe v19))
                                                  (coe v7))
                                               (coe
                                                  MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                                  (coe v16 v17) (coe v5)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                     (coe v18) (coe v19))
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'8859'__188
                                                     (coe v16) (coe v17) (coe v18) (coe v19)
                                                     (coe v24) (coe v33))
                                                  (coe v13)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra.not-Kleene-algebra
d_not'45'Kleene'45'algebra_228 ::
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
d_not'45'Kleene'45'algebra_228 = erased
-- TotalParserCombinators.Laws.KleeneAlgebra._.⋆′-complete
d_'8902''8242''45'complete_252 ::
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
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Lib.T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_'8902''8242''45'complete_252 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8 v9
  = du_'8902''8242''45'complete_252 v0 v4 v5 v6 v8 v9
du_'8902''8242''45'complete_252 ::
  () ->
  (() ->
   [AgdaAny] ->
   MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
   [AgdaAny] ->
   [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Func_714) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  MAlonzo.Code.TotalParserCombinators.Lib.T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_'8902''8242''45'complete_252 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.TotalParserCombinators.Lib.C_'91''93'_72
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1724
             (coe
                MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
             (coe v1 v0 v3 v4)
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe
                MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'left_40
                (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18))
      MAlonzo.Code.TotalParserCombinators.Lib.C__'8759'__88 v8 v9 v11 v12
        -> case coe v2 of
             (:) v13 v14
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.du_'8818''8660''8818''8594'_324)
                    (coe v1 v0 v3 v4) v2
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v8) (coe v9))
                    (coe
                       MAlonzo.Code.TotalParserCombinators.Semantics.C_'8739''45'right_58
                       (coe
                          MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                          (coe v13) (coe v8) (coe v9) (coe v11)
                          (coe
                             MAlonzo.Code.TotalParserCombinators.Semantics.du_'91'_'45'_'93'_'62''62''61'__222
                             (coe v14) (coe v9)
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             (coe
                                du_'8902''8242''45'complete_252 erased (coe v1) (coe v14) (coe v3)
                                (coe v4) (coe v12))
                             (coe MAlonzo.Code.TotalParserCombinators.Semantics.C_return_18))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Laws.KleeneAlgebra._._.fix
d_fix_262 ::
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
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Parser.T_Parser_116 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Lib.T__'8712''91'_'93''8902''183'__62 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
d_fix_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          v13
  = du_fix_262 v13
du_fix_262 ::
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10 ->
  MAlonzo.Code.TotalParserCombinators.Semantics.T__'8712'_'183'__10
du_fix_262 v0 = coe v0
