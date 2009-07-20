module Problem001 (sum35) where

sum35 n = sum [m | m <- [0..n], interestingNumber m]

interestingNumber n = mod n 3 == 0 || mod n 5 == 0
