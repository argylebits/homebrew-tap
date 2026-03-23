class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/RockyCLI"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "bd5b929e0dccea0dfa22dfe5274ddb38234524b635fa731b959a3f27f688b674"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "98ac86e22d8bd369b5df810c4160032f745431a644df6535f21348c40f8b0e05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "fd36ad1f4c45d8c4112d879c099f53a998148a38cf7e3601eeb540b6d3ea9590"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "25f3f1184dfa37a115782ccb966e7bcf9c11722e89a29d4e5e932505151073cb"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
