module Lib
    ( qSort
    ) where

import Data.List

qSort :: (Ord a) => [a] -> [a]
qSort [] = []
qSort (x:xs) = qSort rhs ++ [x] ++ qSort lhs
    where rhs = [x' | x' <- xs, x' <= x]
          lhs = [x' | x' <- xs, x' > x]
