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

module MAlonzo.Code.TotalParserCombinators.Parser where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Data.List.Effectful
import qualified MAlonzo.Code.Effect.Applicative
import qualified MAlonzo.Code.Effect.Choice
import qualified MAlonzo.Code.Effect.Empty
import qualified MAlonzo.Code.Effect.Monad
import qualified MAlonzo.Code.Function.Bundles

-- TotalParserCombinators.Parser._._>>=_
d__'62''62''61'__6 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__6
  = coe
      MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
      (coe
         MAlonzo.Code.Effect.Monad.d_rawMonad_214
         (coe
            MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
            (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
-- TotalParserCombinators.Parser._._∣_
d__'8739'__8 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8739'__8
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Effect.Choice.du__'8739'__24
           (coe MAlonzo.Code.Effect.Monad.d_rawChoice_294 (coe v0)))
-- TotalParserCombinators.Parser._._⊛_
d__'8859'__10 ::
  () -> () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__10
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (let v1 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v0) in
       coe
         (let v2 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v1) in
          coe
            (\ v3 v4 ->
               coe
                 MAlonzo.Code.Effect.Applicative.du__'8859'__70
                 (coe MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v2)))))
-- TotalParserCombinators.Parser._.∅
d_'8709'_12 :: () -> [AgdaAny]
d_'8709'_12
  = let v0 = coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34 in
    coe
      (let v1 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292 (coe v0) in
       coe
         (\ v2 ->
            coe
              MAlonzo.Code.Effect.Empty.du_'8709'_24
              (coe MAlonzo.Code.Effect.Monad.d_rawEmpty_216 (coe v1))))
-- TotalParserCombinators.Parser._.pure
d_pure_14 :: () -> AgdaAny -> [AgdaAny]
d_pure_14
  = coe
      MAlonzo.Code.Effect.Applicative.d_pure_32
      (coe
         MAlonzo.Code.Effect.Monad.d_rawApplicative_32
         (coe
            MAlonzo.Code.Effect.Monad.d_rawMonad_214
            (coe
               MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
               (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34))))
-- TotalParserCombinators.Parser.flatten
d_flatten_18 :: () -> Maybe [AgdaAny] -> [AgdaAny]
d_flatten_18 ~v0 v1 = du_flatten_18 v1
du_flatten_18 :: Maybe [AgdaAny] -> [AgdaAny]
du_flatten_18 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Parser._⊛flatten_
d__'8859'flatten__26 ::
  () -> () -> [AgdaAny -> AgdaAny] -> Maybe [AgdaAny] -> [AgdaAny]
d__'8859'flatten__26 ~v0 ~v1 v2 v3 = du__'8859'flatten__26 v2 v3
du__'8859'flatten__26 ::
  [AgdaAny -> AgdaAny] -> Maybe [AgdaAny] -> [AgdaAny]
du__'8859'flatten__26 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> let v3
                 = MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                     (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34) in
           coe
             (let v4 = MAlonzo.Code.Effect.Monad.d_rawMonad_214 (coe v3) in
              coe
                (coe
                   MAlonzo.Code.Effect.Applicative.du__'8859'__70
                   (MAlonzo.Code.Effect.Monad.d_rawApplicative_32 (coe v4)) v0 v2))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Parser.apply
d_apply_38 ::
  () -> () -> Maybe (AgdaAny -> [AgdaAny]) -> AgdaAny -> [AgdaAny]
d_apply_38 ~v0 ~v1 v2 v3 = du_apply_38 v2 v3
du_apply_38 :: Maybe (AgdaAny -> [AgdaAny]) -> AgdaAny -> [AgdaAny]
du_apply_38 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2 v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Parser.bind
d_bind_50 ::
  () ->
  () -> Maybe [AgdaAny] -> Maybe (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d_bind_50 ~v0 ~v1 v2 v3 = du_bind_50 v2 v3
du_bind_50 ::
  Maybe [AgdaAny] -> Maybe (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du_bind_50 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Effect.Monad.d__'62''62''61'__34
             (MAlonzo.Code.Effect.Monad.d_rawMonad_214
                (coe
                   MAlonzo.Code.Effect.Monad.d_rawMonadZero_292
                   (coe MAlonzo.Code.Data.List.Effectful.du_monadPlus_34)))
             erased erased (coe du_flatten_18 (coe v0)) v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Parser.Claims.⊛flatten-⊛-flatten
d_'8859'flatten'45''8859''45'flatten_68 ::
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  Maybe [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8859'flatten'45''8859''45'flatten_68 = erased
-- TotalParserCombinators.Parser.Claims.⊛flatten-nothing
d_'8859'flatten'45'nothing_82 ::
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8859'flatten'45'nothing_82 = erased
-- TotalParserCombinators.Parser.Claims.bind-flatten->>=-apply
d_bind'45'flatten'45''62''62''61''45'apply_94 ::
  () ->
  () ->
  Maybe [AgdaAny] ->
  Maybe (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_bind'45'flatten'45''62''62''61''45'apply_94 = erased
-- TotalParserCombinators.Parser.Claims.bind-nothing
d_bind'45'nothing_108 ::
  () ->
  () ->
  Maybe [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_bind'45'nothing_108 = erased
-- TotalParserCombinators.Parser.Parser
d_Parser_116 a0 a1 a2 = ()
data T_Parser_116
  = C_return_130 AgdaAny | C_fail_134 | C_token_136 |
    C__'8739'__148 [AgdaAny] [AgdaAny] T_Parser_116 T_Parser_116 |
    C__'60''36''62'__160 [AgdaAny] (AgdaAny -> AgdaAny) T_Parser_116 |
    C__'8859'__174 (Maybe [AgdaAny -> AgdaAny]) (Maybe [AgdaAny])
                   AgdaAny AgdaAny |
    C__'62''62''61'__190 (Maybe [AgdaAny])
                         (Maybe (AgdaAny -> [AgdaAny])) AgdaAny (AgdaAny -> AgdaAny) |
    C_nonempty_198 [AgdaAny] T_Parser_116 |
    C_cast_210 [AgdaAny]
               (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960)
               T_Parser_116
-- TotalParserCombinators.Parser.∞⟨_⟩Parser
d_'8734''10216'_'10217'Parser_122 ::
  () -> Maybe AgdaAny -> () -> () -> [AgdaAny] -> ()
d_'8734''10216'_'10217'Parser_122 = erased
-- TotalParserCombinators.Parser.initial-bag
d_initial'45'bag_262 ::
  () -> () -> [AgdaAny] -> T_Parser_116 -> [AgdaAny]
d_initial'45'bag_262 ~v0 ~v1 v2 ~v3 = du_initial'45'bag_262 v2
du_initial'45'bag_262 :: [AgdaAny] -> [AgdaAny]
du_initial'45'bag_262 v0 = coe v0
-- TotalParserCombinators.Parser.♭?
d_'9837''63'_276 ::
  () ->
  () -> () -> Maybe AgdaAny -> [AgdaAny] -> AgdaAny -> T_Parser_116
d_'9837''63'_276 ~v0 ~v1 ~v2 v3 ~v4 = du_'9837''63'_276 v3
du_'9837''63'_276 :: Maybe AgdaAny -> AgdaAny -> T_Parser_116
du_'9837''63'_276 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe (\ v2 -> v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             (\ v1 ->
                MAlonzo.Code.Agda.Builtin.Coinduction.d_'9837'_22 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- TotalParserCombinators.Parser.forced?
d_forced'63'_288 ::
  () ->
  () -> () -> [AgdaAny] -> Maybe AgdaAny -> AgdaAny -> Maybe AgdaAny
d_forced'63'_288 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_forced'63'_288 v4
du_forced'63'_288 :: Maybe AgdaAny -> Maybe AgdaAny
du_forced'63'_288 v0 = coe v0
-- TotalParserCombinators.Parser.forced?′
d_forced'63''8242'_306 ::
  () ->
  () ->
  () ->
  () ->
  Maybe AgdaAny ->
  (AgdaAny -> [AgdaAny]) -> (AgdaAny -> AgdaAny) -> Maybe AgdaAny
d_forced'63''8242'_306 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_forced'63''8242'_306 v4
du_forced'63''8242'_306 :: Maybe AgdaAny -> Maybe AgdaAny
du_forced'63''8242'_306 v0 = coe v0
-- TotalParserCombinators.Parser.◌
d_'9676'_312 :: () -> Maybe AgdaAny
d_'9676'_312 ~v0 = du_'9676'_312
du_'9676'_312 :: Maybe AgdaAny
du_'9676'_312 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- TotalParserCombinators.Parser.○
d_'9675'_318 :: () -> AgdaAny -> Maybe AgdaAny
d_'9675'_318 ~v0 v1 = du_'9675'_318 v1
du_'9675'_318 :: AgdaAny -> Maybe AgdaAny
du_'9675'_318 v0
  = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v0)
