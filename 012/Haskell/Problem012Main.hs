module Main where

import Data.String
import System.Environment
import System.Exit

import Problem012

main = getArgs >>= putAnswers . (map problem012) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
