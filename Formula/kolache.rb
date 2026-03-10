class Kolache < Formula
  desc "Project scaffolding for Swift developers"
  homepage "https://github.com/argylebits/Kolache"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-arm64.tar.gz"
      sha256 "c26ef6c0c55d167e36ff197dbee49ed944b0b47f09655a71e05dccfc9a5c5c78"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Kolache/releases/download/v#{version}/kolache-macos-x86_64.tar.gz"
      sha256 "e46501fb05cc3cd597a6e033c54675e167dd2cfffbffc5656849da18ae0cae12"
    end
  end

  def install
    bin.install "kolache"
  end

  test do
    assert_match "kolache", shell_output("#{bin}/kolache --help")
  end
end
