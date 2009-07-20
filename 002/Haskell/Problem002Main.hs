module Main where

import Data.String
import System.Environment
import System.Exit

import Problem002

main = getArgs >>= putAnswers . (map fibSum) . parse

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
