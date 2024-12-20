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

module MAlonzo.Code.Data.Vec.Recursive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Algebra
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Unit.Polymorphic.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Properties.Inverse
import qualified MAlonzo.Code.Level

-- Data.Vec.Recursive._^_
d__'94'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> Integer -> ()
d__'94'__20 = erased
-- Data.Vec.Recursive._∈[_]_
d__'8712''91'_'93'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> Integer -> AgdaAny -> ()
d__'8712''91'_'93'__36 = erased
-- Data.Vec.Recursive.cons
d_cons_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_cons_56 ~v0 ~v1 v2 v3 v4 = du_cons_56 v2 v3 v4
du_cons_56 :: Integer -> AgdaAny -> AgdaAny -> AgdaAny
du_cons_56 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
-- Data.Vec.Recursive.uncons
d_uncons_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_68 ~v0 ~v1 v2 v3 = du_uncons_68 v2 v3
du_uncons_68 ::
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_68 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Level.C_lift_20
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> coe v1
-- Data.Vec.Recursive.head
d_head_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_head_80 ~v0 ~v1 v2 v3 = du_head_80 v2 v3
du_head_80 :: Integer -> AgdaAny -> AgdaAny
du_head_80 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_uncons_68 (coe v0) (coe v1))
-- Data.Vec.Recursive.tail
d_tail_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_tail_88 ~v0 ~v1 v2 v3 = du_tail_88 v2 v3
du_tail_88 :: Integer -> AgdaAny -> AgdaAny
du_tail_88 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_uncons_68 (coe v0) (coe v1))
-- Data.Vec.Recursive.fromVec
d_fromVec_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
d_fromVec_96 ~v0 ~v1 v2 = du_fromVec_96 v2
du_fromVec_96 ::
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> AgdaAny
du_fromVec_96 v0
  = coe
      MAlonzo.Code.Data.Vec.Base.du_foldr_352 (coe v0)
      (coe (\ v1 -> coe du_cons_56 (coe v1)))
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Vec.Recursive.toVec
d_toVec_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_toVec_102 ~v0 ~v1 v2 v3 = du_toVec_102 v2 v3
du_toVec_102 ::
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_toVec_102 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                (coe du_head_80 (coe v2) (coe v1))
                (coe du_toVec_102 (coe v2) (coe du_tail_88 (coe v2) (coe v1))))
-- Data.Vec.Recursive.lookup
d_lookup_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_lookup_112 ~v0 ~v1 v2 v3 v4 = du_lookup_112 v2 v3 v4
du_lookup_112 ::
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_lookup_112 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_head_80 (coe v4) (coe v1))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_lookup_112 (coe v5) (coe du_tail_88 (coe v5) (coe v1)) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.replicate
d_replicate_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_replicate_126 ~v0 ~v1 v2 v3 = du_replicate_126 v2 v3
du_replicate_126 :: Integer -> AgdaAny -> AgdaAny
du_replicate_126 v0 v1
  = coe
      du_fromVec_96 v0
      (coe MAlonzo.Code.Data.Vec.Base.du_replicate_444 (coe v0) (coe v1))
-- Data.Vec.Recursive.tabulate
d_tabulate_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
d_tabulate_134 ~v0 ~v1 v2 v3 = du_tabulate_134 v2 v3
du_tabulate_134 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
du_tabulate_134 v0 v1
  = coe
      du_fromVec_96 v0
      (coe MAlonzo.Code.Data.Vec.Base.du_tabulate_452 (coe v0) (coe v1))
-- Data.Vec.Recursive.append
d_append_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_append_144 ~v0 ~v1 v2 v3 v4 v5 = du_append_144 v2 v3 v4 v5
du_append_144 ::
  Integer -> Integer -> AgdaAny -> AgdaAny -> AgdaAny
du_append_144 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe v3
      1 -> coe du_cons_56 (coe v1) (coe v2) (coe v3)
      _ -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                    (coe
                       du_append_144 (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                       (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.splitAt
d_splitAt_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_splitAt_172 ~v0 ~v1 v2 v3 v4 = du_splitAt_172 v2 v3 v4
du_splitAt_172 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_splitAt_172 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Level.C_lift_20
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             (coe v2)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   du_cons_56 (coe v3)
                   (coe du_head_80 (coe addInt (coe v3) (coe v1)) (coe v2))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         du_splitAt_172 (coe v3) (coe v1)
                         (coe du_tail_88 (coe addInt (coe v3) (coe v1)) (coe v2)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      du_splitAt_172 (coe v3) (coe v1)
                      (coe du_tail_88 (coe addInt (coe v3) (coe v1)) (coe v2)))))
-- Data.Vec.Recursive.map
d_map_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
d_map_190 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_map_190 v4 v5 v6
du_map_190 :: (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
du_map_190 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Level.C_lift_20
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      1 -> coe v0 v2
      _ -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v3)
                    (coe
                       du_map_190 (coe v0) (coe subInt (coe v1) (coe (1 :: Integer)))
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.ap
d_ap_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_ap_210 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_ap_210 v4 v5 v6
du_ap_210 :: Integer -> AgdaAny -> AgdaAny -> AgdaAny
du_ap_210 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Level.C_lift_20
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      1 -> coe v1 v2
      _ -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3 v5)
                           (coe
                              du_ap_210 (coe subInt (coe v0) (coe (1 :: Integer))) (coe v4)
                              (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive._.foldr
d_foldr_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
d_foldr_242 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_foldr_242 v4 v5 v6 v7 v8
du_foldr_242 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du_foldr_242 v0 v1 v2 v3 v4
  = case coe v3 of
      0 -> coe v0
      1 -> coe v1 v4
      _ -> let v5 = subInt (coe v3) (coe (2 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       v2 v5 v6
                       (coe
                          du_foldr_242 (coe v0) (coe v1) (coe v2)
                          (coe subInt (coe v3) (coe (1 :: Integer))) (coe v7))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Vec.Recursive.foldl
d_foldl_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
d_foldl_280 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_foldl_280 v4 v5 v6 v7 v8
du_foldl_280 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny
du_foldl_280 v0 v1 v2 v3 v4
  = case coe v3 of
      0 -> coe v0
      1 -> coe v1 v4
      _ -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    du_foldl_280 (coe v1 v5)
                    (coe (\ v7 -> coe v2 (0 :: Integer) v7 (coe v1 v5)))
                    (coe (\ v7 -> coe v2 (addInt (coe (1 :: Integer)) (coe v7))))
                    (coe subInt (coe v3) (coe (1 :: Integer))) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.reverse
d_reverse_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny
d_reverse_322 ~v0 ~v1 = du_reverse_322
du_reverse_322 :: Integer -> AgdaAny -> AgdaAny
du_reverse_322
  = coe
      du_foldl_280
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v0 -> v0))
      (coe (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32))
-- Data.Vec.Recursive.zipWith
d_zipWith_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_zipWith_330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_zipWith_330 v6 v7 v8 v9
du_zipWith_330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
du_zipWith_330 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Level.C_lift_20
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      1 -> coe v0 v2 v3
      _ -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v4 v6)
                           (coe
                              du_zipWith_330 (coe v0) (coe subInt (coe v1) (coe (1 :: Integer)))
                              (coe v5) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.unzipWith
d_unzipWith_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_unzipWith_358 v6 v7 v8
du_unzipWith_358 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_358 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Level.C_lift_20
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             (coe
                MAlonzo.Code.Level.C_lift_20
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      1 -> coe v0 v2
      _ -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_zip_198
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
                    (coe (\ v5 v6 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32))
                    (coe v0 v3)
                    (coe
                       du_unzipWith_358 (coe v0)
                       (coe subInt (coe v1) (coe (1 :: Integer))) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Recursive.zip
d_zip_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_zip_378 ~v0 ~v1 ~v2 ~v3 = du_zip_378
du_zip_378 :: Integer -> AgdaAny -> AgdaAny -> AgdaAny
du_zip_378
  = coe
      du_zipWith_330 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.Vec.Recursive.unzip
d_unzip_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_382 ~v0 ~v1 ~v2 ~v3 = du_unzip_382
du_unzip_382 ::
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_382 = coe du_unzipWith_358 (coe (\ v0 -> v0))
-- Data.Vec.Recursive.lift↔
d_lift'8596'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_lift'8596'_386 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_lift'8596'_386 v4 v5
du_lift'8596'_386 ::
  Integer ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_lift'8596'_386 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.Level.C_lift_20
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.Level.C_lift_20
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      1 -> coe v1
      _ -> coe
             MAlonzo.Code.Data.Product.Algebra.du_'215''45'cong_42 (coe v1)
             (coe
                du_lift'8596'_386 (coe subInt (coe v0) (coe (1 :: Integer)))
                (coe v1))
-- Data.Vec.Recursive.Fin[m^n]↔Fin[m]^n
d_Fin'91'm'94'n'93''8596'Fin'91'm'93''94'n_400 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_Fin'91'm'94'n'93''8596'Fin'91'm'93''94'n_400 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'trans_40
             MAlonzo.Code.Data.Fin.Properties.d_1'8596''8868'_26
             (coe
                MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'sym_38
                (coe
                   MAlonzo.Code.Data.Unit.Polymorphic.Properties.du_'8868''8596''8868''42'_76))
      1 -> coe
             MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'refl_36
      _ -> coe
             MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'trans_40
             (coe
                MAlonzo.Code.Data.Fin.Properties.du_'42''8596''215'_1294
                (coe
                   MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0)
                   (coe subInt (coe v1) (coe (1 :: Integer)))))
             (coe
                MAlonzo.Code.Data.Product.Algebra.du_'215''45'cong_42
                (coe MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'refl_36)
                (coe
                   d_Fin'91'm'94'n'93''8596'Fin'91'm'93''94'n_400 (coe v0)
                   (coe subInt (coe v1) (coe (1 :: Integer)))))
