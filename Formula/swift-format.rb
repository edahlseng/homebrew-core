class SwiftFormat < Formula
  desc "(Proposed) official formatter for Swift"
  homepage "https://github.com/google/swift/tree/format"
  head "https://github.com/google/swift.git", :branch => "format"

  depends_on :xcode => ["10.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--build-path", ".build"
    bin.install ".build/release/swift-format"
  end

  test do
    system "#{bin}/swift-format", "--help"
  end
end
