class Roadrunner < Formula
  desc "Ephemeral Linux CI runners on macOS"
  homepage "https://github.com/argylebits/Roadrunner"
  version "0.1.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/argylebits/Roadrunner/releases/download/v#{version}/roadrunner-macos-arm64.tar.gz"
  sha256 "1a63ef820052db91a56298283e85900c6496d59bf3f996da42991e5cb5129a18"

  def install
    bin.install "roadrunner"
  end

  test do
    assert_match "roadrunner", shell_output("#{bin}/roadrunner --help")
  end
end
