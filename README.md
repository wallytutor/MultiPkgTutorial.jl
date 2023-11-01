# Multi-package repository tutorial

## Base development

1. Create root directory `src/`
1. Inside `src/` start julia and create the sub-projects

    ```@julia-repl
    (@v1.9) pkg> generate PkgCore
    (@v1.9) pkg> generate PkgOther
    ```

1. To be able to create dependencies between packages, add them to a local registry. Something as [wallytutor-registry](https://github.com/wallytutor/wallytutor-registry) can be used to generate a local registry.
1. Under each package directory add the dependencies of other sub-packages. Assuming you are working on `PkgOther`, you can now add core with:

    ```julia-repl
    (@v1.9) pkg> activate .
    Activating project at `D:\MultiPkgTutorial.jl\src\PkgOther`

    (PkgOther) pkg> add PkgCore
    Resolving package versions...
    ```

1. After modifications to `PkgCore`, these must commited to a new version and registry updated.

## Documentation

Documentation will be treated as a project itself.

1. Create a `docs` directory in the root of the repository.
1. Create a `Project.toml` file with only a `[deps]` section.
1. Running Julia from within the `docs/` directory, activate the project with `] activate .` and add the sub-packages as dependencies.
1. After each sub-package update, consider refreshing the local registry then `] update` in the documentation project.
1. Create a `gh-pages` branch of the repository as [here](https://coderwall.com/p/0n3soa/create-a-disconnected-git-branch).
