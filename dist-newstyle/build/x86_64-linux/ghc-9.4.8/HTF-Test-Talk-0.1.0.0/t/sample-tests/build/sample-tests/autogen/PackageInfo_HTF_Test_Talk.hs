{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_HTF_Test_Talk (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "HTF_Test_Talk"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "HTF Testing demo"
copyright :: String
copyright = ""
homepage :: String
homepage = ""
