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

module MAlonzo.Code.Data.Unit.NonEta where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Data.Unit.NonEta.Unit
d_Unit_6 = ()
data T_Unit_6 = C_unit_8
-- Data.Unit.NonEta.Hidden
d_Hidden_12 :: MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_Hidden_12 = erased
-- Data.Unit.NonEta.hide
d_hide_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T_Unit_6 -> AgdaAny
d_hide_28 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_hide_28 v4 v5
du_hide_28 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_hide_28 v0 v1 = coe v0 v1
-- Data.Unit.NonEta.reveal
d_reveal_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (T_Unit_6 -> AgdaAny) -> AgdaAny
d_reveal_38 ~v0 ~v1 v2 = du_reveal_38 v2
du_reveal_38 :: (T_Unit_6 -> AgdaAny) -> AgdaAny
du_reveal_38 v0 = coe v0 erased
