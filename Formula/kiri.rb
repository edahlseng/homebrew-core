class Kiri < Formula
  desc "Small tool to experiment having a visual diff tool for KiCad"
  homepage "https://github.com/leoheck/kiri"
  url "https://github.com/leoheck/kiri.git",
      using:    :git,
      revision: "1fc8edccb0b7d5bbab8ff45109fc461382de7bfa"
  version "20211221"

  depends_on "coreutils"
  depends_on "dos2unix"
  depends_on "edahlseng/core/kicad-diff"
  depends_on "edahlseng/core/plotkicadsch"
  depends_on "findutils"
  depends_on "gsed"
  depends_on "python-tk"
  depends_on "python@3.9"

  def install
    prefix.install "assets"
    bin.install "bin/git-imgdiff"
    bin.install "bin/kiri"
    bin.install "bin/kiri-file-picker"
    bin.install "bin/kiri-git-log"
    bin.install "bin/kiri-server"
  end

  test do
    system "#{bin}/kiri", "--help"
  end
end
