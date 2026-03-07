class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/Rocky"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "1047530d05fb9300babd683a07175fcbf342ceb718657b545aafd12b0255f9b2"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "e877f0e79a257eebb25f45ca2600e2c4e7de869404a453d8813297ccd5257c92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "435c45abd169c74d56703564abfc51760975643f55ed358b5531464fcfb88e0f"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "5a8f742cd5b6a77cd319fe0fa837e7d1796c78784fd98d4b27a3d762f9d54809"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
