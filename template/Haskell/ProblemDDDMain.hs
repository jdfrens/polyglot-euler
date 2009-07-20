module Main where

import Data.String
import System.Environment
import System.Exit

import ProblemDDD

main = getArgs >>= putAnswers . (map computation) . parse {- TODO: use Haskell computation -}

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
