require "language/node"

class NotesOrganizer < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/notes-organizer"
  url "https://registry.npmjs.org/@eric.dahlseng/notes-organizer/-/notes-organizer-0.1.1.tgz"
  version "0.1.1"
  sha256 "86f7cf88189e6bf2d82170c0774cea44eab4ed5292cb7ba93f85b76c52029688"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
