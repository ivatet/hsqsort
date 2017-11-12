module Main where

import Lib

main :: IO ()
main = do
    unsorted <- readLn :: IO [Int]
    let sorted = qSort unsorted
    putStrLn $ show sorted
