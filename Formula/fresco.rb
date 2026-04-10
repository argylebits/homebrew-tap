class Fresco < Formula
  desc "AI image generation CLI"
  homepage "https://github.com/argylebits/Fresco"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-arm64.tar.gz"
      sha256 "453e3a76fa9cb813b3f275e2971980fc0987702b93a9f68f39693d3870b3039e"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-macos-x86_64.tar.gz"
      sha256 "06ccb4b46ce390f822de9f9c97e030d73e09c066dc9eb2d04ed7d170a8292054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-arm64.tar.gz"
      sha256 "d3d5a85d93963aa6b817b8c8b92e93d3a2e65e9a20e8f9ac59d2195781e6797d"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Fresco/releases/download/v#{version}/fresco-linux-x86_64.tar.gz"
      sha256 "498c1e8a304fa70b3d9a73f05b21d5de915cb6536a2513e71449c2560f91bbfb"
    end
  end

  def install
    bin.install "fresco"
  end

  test do
    assert_match "fresco", shell_output("#{bin}/fresco --help")
  end
end
