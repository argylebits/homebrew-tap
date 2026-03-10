class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/RockyCLI"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "b69e54968effb37b9ea7f11590ad988d020d89b4977617b2313271075eac89cc"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "8299638f1afb621d73946018adbf8a4f6765ebaf5a84cd1b319708e7091d3192"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "b8c9441f7bc94223ec850fb500bb397a98329c0a8c3d5ee9e0b525bf7d5f5704"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "1418ac8d075049844226e1bf11483836c28ed82d63cff171507a02f916626c42"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
