class Fresco < Formula
  desc "AI image generation CLI"
  homepage "https://github.com/argylebits/Fresco"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-arm64.tar.gz"
      sha256 "c3650324221850238a3f5d1bef040dbba5ca4d19bde20cd48dd9b86210fbab07"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-x86_64.tar.gz"
      sha256 "53f88f38bbba1f999f7d6b2a5819175db866a49d17c75d5e4957ebaf1a82cd6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-arm64.tar.gz"
      sha256 "42edba4a2442454158b9ed59dd78d5ec503b461ba6b3d6f8b1a93ae59b6493df"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-x86_64.tar.gz"
      sha256 "dc92ee42fa79ef50de2082cb93d052fd19deb03abae0904c809be35e6f4b30f4"
    end
  end

  def install
    bin.install "fresco"
  end

  test do
    assert_match "fresco", shell_output("#{bin}/fresco --help")
  end
end
