class ClangTidy < Formula
  desc "clang-based C++ “linter” tool."
  homepage "https://clang.llvm.org/extra/clang-tidy/"
  url "http://releases.llvm.org/9.0.0/clang+llvm-9.0.0-x86_64-darwin-apple.tar.xz"
  sha256 "b46e3fe3829d4eb30ad72993bf28c76b1e1f7e38509fbd44192a2ef7c0126fc7" # curl <url> | sha256sum
  version "9.0.0"

  def install
    bin.install "bin/clang-tidy"
  end

  test do
    (testpath/"test.cpp").write <<-EOS
      int main() { printf(\"hello\"); }
    EOS

    assert shell_output(
      "#{bin}/clang-tidy test.cpp --",
    ).include? "undeclared identifier 'printf'"
  end
end
