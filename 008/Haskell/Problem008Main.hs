module Main where

import Data.String
import System.Environment
import System.Exit

import Problem008

main = getArgs >>= putAnswers . (map largestFiveDigitProduct) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
