require "language/node"

class NotesOrganizer < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/notes-organizer"
  url "https://registry.npmjs.org/@eric.dahlseng/notes-organizer/-/notes-organizer-0.2.0.tgz"
  version "0.2.0"
  sha256 "96372ce9108c18ff5ba33ae688a0f67df479e3f75d1af4f29be212edbe48641f" # curl <url> | sha256sum

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
