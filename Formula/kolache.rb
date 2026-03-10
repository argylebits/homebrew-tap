class Kolache < Formula
  desc "Project scaffolding for Swift developers"
  homepage "https://github.com/argylebits/Kolache"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-arm64.tar.gz"
      sha256 "f01d5d88641fc7c5745abc5734d19d538312207bd2054c356850f0ae2177d3ee"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-x86_64.tar.gz"
      sha256 "86d1cff7cd14b60664ca933a288e6e1a68920f4d418f6eb1b1833dddb821cc97"
    end
  end

  def install
    bin.install "kolache"
  end

  test do
    assert_match "kolache", shell_output("#{bin}/kolache --help")
  end
end
