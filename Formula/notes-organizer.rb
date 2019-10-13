require "language/node"

class NotesOrganizer < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/notes-organizer"
  url "https://registry.npmjs.org/@eric.dahlseng/notes-organizer/-/notes-organizer-0.3.1.tgz"
  version "0.3.1"
  sha256 "7519c80126743afd862d58b307d1c9a3a38d82dd3a03499fa0bee6ab4c0a3c3e" # curl <url> | sha256sum

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
