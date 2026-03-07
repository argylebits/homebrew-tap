class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/Rocky"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "961c243e2412619db41892a93da815c33cc849093959c418c06ead80ceeab713"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "caf18c158d4dd804580673345095fed94e82bba745976ef6d38358331a563765"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "0e341a02e503e8b0c297a10225abb38d3fbee7ca17b52b2a498c4eb2220f347d"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Rocky/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "b178e787af4273d7c800eceecf61b336cc38af23fa896b279268bfc6cb07a38e"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
