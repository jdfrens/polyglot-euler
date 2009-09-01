module Main where

import Data.String
import System.Environment
import System.Exit

import Problem010

main = getArgs >>= putAnswers . (map sumOfPrimesBelow) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
