module Main where

import Data.String
import System.Environment
import System.Exit

import Problem003

main = getArgs >>= putAnswers . (map greatestPrimeFactor) . parse

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
