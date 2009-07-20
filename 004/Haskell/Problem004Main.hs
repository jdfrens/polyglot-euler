module Main where

import Data.String
import System.Environment
import System.Exit

import Problem004

main = getArgs >>= putAnswers . (map findPalindromeProduct) . parse

parse args     = map read args

putAnswers l   = putStr (unlines (map show l))
