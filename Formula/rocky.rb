class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/RockyCLI"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "232c196937b593d2769f6481201bcf27b77b078654ab1c4431be43a9569699fb"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "fccafa035e231c7da383abd0c3aec6b2ba02be33705f83e6946e392446995b2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "18f111b68837f892e2dbc420171bddc4485dfbe5bfcc087e4647973c339efa80"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "a12dda118d9afe4cd24c21a7774ebd9621ace1743346f2448f62c497a796bc91"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
