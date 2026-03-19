class Kolache < Formula
  desc "Project scaffolding for Swift developers"
  homepage "https://github.com/argylebits/Kolache"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-arm64.tar.gz"
      sha256 "8e817fb587295928b0c5bdbdb8937939fd648ff0ee6d00335e4b4f0a5d88f4b3"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-x86_64.tar.gz"
      sha256 "bdcecd133b9e472d888f6391968c37510d86b347211c4f08f807adec24cd165f"
    end
  end

  def install
    bin.install "kolache"
  end

  test do
    assert_match "kolache", shell_output("#{bin}/kolache --help")
  end
end
