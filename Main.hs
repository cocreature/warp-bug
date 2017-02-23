{-# LANGUAGE OverloadedStrings #-}
module Main where

import Network.HTTP.Types.Status
import Network.Wai
import qualified Network.Wai.Handler.Warp as Warp

main :: IO ()
main = do
  Warp.runSettings (Warp.setTimeout 1 $ Warp.setPort 8080 Warp.defaultSettings) $ \req respond ->
    respond $ responseLBS status200 [] "Hello World"
