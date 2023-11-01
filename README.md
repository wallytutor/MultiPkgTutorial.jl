# Multi-package repository tutorial

1. Create root directory `src/`
1. Inside `src/` start julia and create the sub-projects

    ```@julia-repl
    (@v1.9) pkg> generate PkgCore
    (@v1.9) pkg> generate PkgOther
    ```

1. 
