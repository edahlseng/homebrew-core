require "language/node"

class PullRequest < Formula
  desc "Notes organizer tool"
  homepage "https://github.com/edahlseng/pull-request"
  url "https://registry.npmjs.org/@eric.dahlseng/pull-request/-/pull-request-0.1.1.tgz"
  # version "0.1.1" # Redundant with version scanned from URL
  sha256 "66ea8e2a759bf8517fb63a0eedb6ac4936886c3810591d15287bf32495d90d46" # curl <url> | sha256sum

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
