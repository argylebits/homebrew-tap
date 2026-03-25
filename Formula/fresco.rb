class Fresco < Formula
  desc "AI image generation CLI"
  homepage "https://github.com/argylebits/Fresco"
  version "0.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "fresco"
  end

  test do
    assert_match "fresco", shell_output("#{bin}/fresco --help")
  end
end
