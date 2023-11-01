# Multi-package repository tutorial

1. Create root directory `src/`
1. Inside `src/` start julia and create the sub-projects

    ```@julia-repl
    (@v1.9) pkg> generate PkgCore
    (@v1.9) pkg> generate PkgOther
    ```

1. To be able to create dependencies between packages, add them to a local registry. Something as [wallytutor-registry](https://github.com/wallytutor/wallytutor-registry) can be used to generate a local registry.
1. Under each package directory add the dependencies of other sub-packages. Assuming you are working on `PkgOther`, you can now add core with:

    ```@julia-repl
    (@v1.9) pkg> activate .
    (@v1.9) (PkgOther)> add PkgCore
    ```
