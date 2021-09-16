class Plotkicadsch < Formula
  desc "Small tool to export Kicad Sch files to SVG pictures"
  homepage "https://jnavila.github.io/plotkicadsch/"
  url "https://github.com/jnavila/plotkicadsch.git",
    using:    :git,
    revision: "f26942b3f83a74ef2487da3c7bfb793f55c8e1a4"
  version "20211118"

  depends_on "dune" => :build
  depends_on "opam" => :build

  def install
    # .brew_home is in current directory, which prevents opam from working properly
    # in commands below unless we move to a subdirectory
    Dir.mkdir("sources")
    system "mv $(git ls-tree HEAD --name-only) sources"
    mv ".git", "sources"

    cd "sources" do
      system "opam", "init", "--no-setup", "--disable-sandboxing"

      system "opam", "switch", "create", "4.09.1"
      system "opam", "switch", "4.09.1"

      system "opam", "config", "exec", "--", "dune", "subst"

      system "opam", "config", "exec", "--", "opam", "pin", "--yes", "add", "--kind=path", "kicadsch", "."
      system "opam", "config", "exec", "--", "opam", "pin", "--yes", "add", "--kind=path", "plotkicadsch", "."
      system "opam", "config", "exec", "--", "opam", "update", "--yes"
      system "opam", "config", "exec", "--", "opam", "install", "--yes", "plotkicadsch"

      bin.install "#{buildpath}/.brew_home/.opam/4.09.1/bin/git-imgdiff"
      bin.install "#{buildpath}/.brew_home/.opam/4.09.1/bin/plotgitsch"
      bin.install "#{buildpath}/.brew_home/.opam/4.09.1/bin/plotkicadsch"
    end
  end

  test do
    raise "Test not implemented."
  end
end
