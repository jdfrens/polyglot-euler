module Main where

import Data.String
import System.Environment
import System.Exit

import Problem005

main = getArgs >>= putAnswers . (map smallest_multiple) . parse

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
