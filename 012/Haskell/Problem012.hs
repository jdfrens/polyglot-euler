module Problem012 (problem012) where

import Data.List

import Numbers

problem012 :: Integer -> Integer
problem012 n = 
  case find enoughFactors $ map triangleNumber [1, 2..] of
    Just t -> t
    Nothing -> error "What happened?"
  where
    enoughFactors i = (length $ factors i) >= fromInteger n
