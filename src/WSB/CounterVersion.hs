{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE DeriveGeneric              #-}
{-|
Module      : WSB counter version
Description : Define the different counter versions
Copyright   : (c) josejuan, 2017
License     : GPL-3
Maintainer  : jose-juan@computer-mind.com
Stability   : experimental
Portability : POSIX

Define the different counter versions you can use on WSB
-}
module WSB.CounterVersion where

import Data.Aeson
import GHC.Generics

data CounterVersion = AbsoluteCounter   -- ^Count the absolute value of certain magnitude
                    | FrequencyCounter  -- ^Count the absolute value with respect the elapsed time
                      deriving (Show, Read, Eq, Enum, Bounded, Generic)

instance ToJSON CounterVersion
instance FromJSON CounterVersion
