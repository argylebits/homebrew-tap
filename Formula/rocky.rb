class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/Rocky"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "ae590dd3676e9fa3277675f1fb1fbd3157552d5455dbac207b4ce58b9a7f9d89"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "c66525ad990bc8d4df50c02e532db0d06f19fe76b51f75a063c9c195b31686f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "cd8301c08ea58856fd1961fa78175f601c66e0685d5854c8daeff8dd06af27f0"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "eed5af4a5df595d0d454a44ad8d84451fcf4f8761c700794b6697586bd5b2562"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
