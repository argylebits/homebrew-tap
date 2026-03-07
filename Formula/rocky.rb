class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/Rocky"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "c1d67a1b9cf44b4825f355b3b433191807fdf4a6d49069a8451bb6be8b115c06"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "80534b57742187dbf876870262baecc6ce12c0794b9dc06d1ee34f4dfd7acb32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "fd457145170f18e671cea41b9da2b8ba89c556f02f7bc169777cd67e6bde124b"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "12278df15ec869d3c0af49625f494881ca628e9d76207aad34a7f4046367fc06"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
