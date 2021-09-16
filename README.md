Homebrew Core
=============

Formulae for tools built or used by [edahlseng](https://github.com/edahlseng).

Usage
-----

```shell
brew install edahlseng/core/<formula name>
```

Formulae
--------

* [clang-tidy](https://clang.llvm.org/extra/clang-tidy/): clang-based C++ “linter” tool (`clang-tidy` is normally only available along with the rest of the tools in the `llvm` Formula in the core repository)
* [git-sweep](https://github.com/edahlseng/git-sweep): A command line tool for cleaning up stale local branches in a Git repository.
* [plotkicadsch](https://jnavila.github.io/plotkicadsch/): A small tool to export Kicad Sch files to SVG pictures.
* [pull-request](https://github.com/edahlseng/pull-request): A command line tool for common repository actions related to creating and submitting pull-requests
* [swift-format](https://github.com/google/swift/tree/format): (Proposed) official formatter for Swift, by Google

Contributing
------------

Ensure that all `brew audit --new-formula <path/to/formula>` tests pass.

Development
-----------

```shell
# --debug will catch errors, providing an option to drop into a shell
# --verbose will show output from the install steps (but will show a lot of other Homebrew output, as well)
brew (re)install ./Formula/<tool name>.rb [--debug] [--verbose]

# Run tests defined in formula
brew test ./Formula/<tool name>.rb

# Clean up by uninstalling; install again from the Git repo once pushed
brew uninstall ./Formula/<tool name>.rb
```
