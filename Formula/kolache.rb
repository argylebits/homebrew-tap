class Kolache < Formula
  desc "Project scaffolding for Swift developers"
  homepage "https://github.com/argylebits/Kolache"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-arm64.tar.gz"
      sha256 "0486d6e0a9e10c2f4297503d29eb06a5663fb136028d6754df6c8e335454cdb2"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-x86_64.tar.gz"
      sha256 "cee6dded77e7ab15b0ad72dfd5f5c0bd1e9be21097886e1c6cc49464b2f85e50"
    end
  end

  def install
    bin.install "kolache"
  end

  test do
    assert_match "kolache", shell_output("#{bin}/kolache --help")
  end
end
