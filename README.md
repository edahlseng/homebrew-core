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
* [pull-request](https://github.com/edahlseng/pull-request): A command line tool for common repository actions related to creating and submitting pull-requests
* [swift-format](https://github.com/google/swift/tree/format): (Proposed) official formatter for Swift, by Google

Contributing
------------

Ensure that all `brew audit --new-formula <path/to/formula>` tests pass. You can do a test install with `brew install path/to/formula`.
