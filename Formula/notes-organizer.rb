require "language/node"

class NotesOrganizer < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/notes-organizer"
  url "https://registry.npmjs.org/@eric.dahlseng/notes-organizer/-/notes-organizer-0.3.0.tgz"
  version "0.3.0"
  sha256 "d19ff778f270b91d8cf6e71c2be4f49a0963c5dc385837a6dd7140a30c51fb8f" # curl <url> | sha256sum

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
