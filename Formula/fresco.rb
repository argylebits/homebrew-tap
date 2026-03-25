class Fresco < Formula
  desc "AI image generation CLI"
  homepage "https://github.com/argylebits/Fresco"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-arm64.tar.gz"
      sha256 "1703d6ca3ea3efa2ba3d966ed212b1d9f559c8d383d8665e679e89d488202d3f"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-x86_64.tar.gz"
      sha256 "b5c7fa1421525eec0324aa1dc25a2704a505c642dd055f63e3f53582eb4fc8fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-arm64.tar.gz"
      sha256 "1456e74f8773c413e8e8f4681f4e8a400e661a6dc2a3763f84958febb16ad5e8"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-x86_64.tar.gz"
      sha256 "e1fc2aeafc23d13789a54e8c8fbf7f49f246d5525b3900c99cdbb429752d2453"
    end
  end

  def install
    bin.install "fresco"
  end

  test do
    assert_match "fresco", shell_output("#{bin}/fresco --help")
  end
end
