module Main where

import Data.String
import System.Environment
import System.Exit

import Problem020

main = getArgs >>= putAnswers . (map sumOfDigitsOfFactorial) . parse
  where
    parse args     = map read args
    putAnswers l   = putStr $ unlines $ map show l
