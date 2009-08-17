module Main where

import Data.String
import System.Environment
import System.Exit

import Problem006

main = getArgs >>= putAnswers . (map diff_squares_sums) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
