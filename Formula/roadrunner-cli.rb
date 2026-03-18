class RoadrunnerCli < Formula
  desc "Ephemeral Linux CI runners on macOS"
  homepage "https://github.com/argylebits/RoadrunnerCLI"
  version "0.1.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/argylebits/RoadrunnerCLI/releases/download/v#{version}/roadrunner-macos-arm64.tar.gz"
  sha256 "3d7d8558e825e04759126ba5cef50b4328b039b2be4e7a1d56e3794c57251118"

  def install
    bin.install "roadrunner"
  end

  test do
    assert_match "roadrunner", shell_output("#{bin}/roadrunner --help")
  end
end
