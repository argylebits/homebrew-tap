class Fresco < Formula
  desc "AI image generation CLI"
  homepage "https://github.com/argylebits/Fresco"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-arm64.tar.gz"
      sha256 "ba0813fd32338875e1951ee9fc1d2e2aea803367a9250d8fe6fff4b02438ebfc"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-x86_64.tar.gz"
      sha256 "152368ea1df7812c4419d90e08e4d4d43da59117e7e906dc044e410f608364f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-arm64.tar.gz"
      sha256 "cce6e7f5215c1708bea9dba8218c7a5e95afab4e7fe642ece318630fe21c283d"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-x86_64.tar.gz"
      sha256 "14a1b664359afb3317c3c95ccba87c68f8b125c427c1ec0d101ccfc217dc74a3"
    end
  end

  def install
    bin.install "fresco"
  end

  test do
    assert_match "fresco", shell_output("#{bin}/fresco --help")
  end
end
