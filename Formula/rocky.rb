class Rocky < Formula
  desc "CLI time tracking tool"
  homepage "https://github.com/argylebits/RockyCLI"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-arm64.tar.gz"
      sha256 "f418046e0d27885715749188549d21cef4e04bfadd79160f0660f168891e4856"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-macos-x86_64.tar.gz"
      sha256 "b04050e5220bff20bb468cb28c4b36be6785f7dedb3e0c3df9e7d7b0112275ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-arm64.tar.gz"
      sha256 "303c05de5aed173531ef519e318a6981ee41752e6ca91be2d5ca5127199307bf"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/RockyCLI/releases/download/v#{version}/rocky-linux-x86_64.tar.gz"
      sha256 "bf2b5897d3171048ed130a7f0808dc3f455a86048e3781f274748af62b1d8b92"
    end
  end

  def install
    bin.install "rocky"
  end

  test do
    assert_match "rocky", shell_output("#{bin}/rocky --help")
  end
end
