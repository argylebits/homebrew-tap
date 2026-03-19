class RoadrunnerCli < Formula
  desc "Ephemeral Linux CI runners on macOS"
  homepage "https://github.com/argylebits/RoadrunnerCLI"
  version "0.1.2"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/argylebits/RoadrunnerCLI/releases/download/v#{version}/roadrunner-macos-arm64.tar.gz"
  sha256 "a5c04685f2f4de6949f07afb545969600b31a43f0a8eab6c2836c25690dfbe98"

  def install
    bin.install "roadrunner"
  end

  test do
    assert_match "roadrunner", shell_output("#{bin}/roadrunner --help")
  end
end
