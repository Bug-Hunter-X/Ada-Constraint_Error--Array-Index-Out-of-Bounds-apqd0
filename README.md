# Ada Constraint_Error Example

This repository demonstrates a common runtime error in Ada: the `Constraint_Error` exception, which occurs when accessing an array element outside its declared index range.

The `bug.ada` file contains Ada code that attempts to assign a value to an array element beyond its bounds. This results in a `Constraint_Error` exception during execution.

The `bugSolution.ada` file provides a corrected version of the code that avoids the error by checking the index before array access, ensuring that the program handles potential errors gracefully.

This example highlights the importance of robust error handling in Ada to prevent unexpected program termination.