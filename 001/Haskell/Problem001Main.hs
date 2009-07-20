module Main where

import Data.String
import System.Environment
import System.Exit

import Problem001

main = getArgs >>= putAnswers . (map sum35) . parse

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
