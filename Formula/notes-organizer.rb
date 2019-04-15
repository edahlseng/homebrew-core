require "language/node"

class NotesOrganizer < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/notes-organizer"
  url "https://registry.npmjs.org/@eric.dahlseng/notes-organizer/-/notes-organizer-0.1.0.tgz"
  version "0.1.0"
  sha256 "7f20fffdcebd29e4231a09229c646c23039b7be311d5198aa7fc5f1ee8c1a683"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
