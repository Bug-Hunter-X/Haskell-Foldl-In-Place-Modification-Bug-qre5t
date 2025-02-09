The correct approach uses immutability and functional paradigms:

```haskell
import Data.Maybe

modifyList :: [Maybe Int] -> [Int]
modifyList xs = foldr (
  x acc -> case x of
    Just y  -> y : acc
    Nothing -> acc
  ) [] xs
```

This version utilizes `foldr` (right fold), which processes the list from right to left, directly constructing the result list by prepending elements.  Alternatively, list comprehensions provide a more concise and readable solution:

```haskell
modifyList :: [Maybe Int] -> [Int]
modifyList xs = [x | Just x <- xs]
```