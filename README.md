# Haskell Foldl In-Place Modification Bug

This repository demonstrates a common misunderstanding in Haskell regarding the use of `foldl` and mutable state.  The example code attempts to use `foldl` with a function that modifies its accumulator in-place.  However, Haskell passes the accumulator by value, rendering in-place modifications ineffective.

The `bug.hs` file contains the erroneous code.  The `bugSolution.hs` file presents a corrected version using proper functional techniques.

## Bug Description:
The original code incorrectly assumes `foldl` passes its accumulator by reference, enabling modifications within the folding function to persist. In Haskell, values are immutable, and thus, modifications within the function are not reflected in the final result.