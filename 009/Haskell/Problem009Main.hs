module Main where

import Data.String
import System.Environment
import System.Exit

import Problem009

main = getArgs >>= putAnswers . (map pythagoreanTriplet) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
