class GitSweep < Formula
  desc ""
  homepage "https://github.com/edahlseng/git-sweep"
  url "https://github.com/edahlseng/git-sweep/archive/v0.1.0.tar.gz"
  sha256 "f65f36cd42552f759dc5f9d77352118f2514bb6f409faeed531f11a5f745253a"
  depends_on "bash"
  depends_on "git"

  def install
    bin.install "git-sweep" # move 'git-sweep' under #{prefix}/bin/
  end

  test do
    system bin/"git-sweep", "--help"
  end
end
