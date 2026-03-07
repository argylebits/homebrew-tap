class Lederhosen < Formula
  desc "A static site generator"
  homepage "https://github.com/argylebits/Lederhosen"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Lederhosen/releases/download/v#{version}/lederhosen-macos-arm64.tar.gz"
      sha256 "bd96b840cf2afcaed140dbe922e0f76bf7fbd30afec0b58a30abdc66507870b3"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Lederhosen/releases/download/v#{version}/lederhosen-macos-x86_64.tar.gz"
      sha256 "379df6ad4056280cd9db8f34923dfec18cf1db8b446b9b471d6198376dce8e29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/argylebits/Lederhosen/releases/download/v#{version}/lederhosen-linux-arm64.tar.gz"
      sha256 "2a35adcce3943a9506be36b2b3f54359c10832f66cb8540830e8890eea7d6ba3"
    elsif Hardware::CPU.intel?
      url "https://github.com/argylebits/Lederhosen/releases/download/v#{version}/lederhosen-linux-x86_64.tar.gz"
      sha256 "0d4c8794659ef5f753f0dc995d3119783d701c127b52b30ec59285eb64dfe097"
    end
  end

  def install
    bin.install "lederhosen"
  end

  test do
    assert_match "Lederhosen", shell_output("#{bin}/lederhosen --version")
  end
end
