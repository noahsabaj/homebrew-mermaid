class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.24.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.24.0/mermaid-macos-aarch64.tar.gz"
      sha256 "9aa711ca8db2f5e72c9b1de92e8f0ef039240d3a5477d74086d35de08e29b654"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.24.0/mermaid-macos-x86_64.tar.gz"
      sha256 "a91b9366e6e0903040abd380f879af8d7caa4ee91016e791995ad2c6790cdeda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.24.0/mermaid-linux-aarch64.tar.gz"
      sha256 "2904b1ddbb27747ca347618fe6222229ae55edb26a0684af72d80dbde95777a1"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.24.0/mermaid-linux-x86_64.tar.gz"
      sha256 "d4aacfe3f6b5f1321b096e557e39bee6940b85a364a3f69923de0c7f4d9c0b84"
    end
  end

  def install
    bin.install "mermaid"
    bin.install "mermaidd"
  end

  test do
    assert_match "Mermaid v#{version}", shell_output("#{bin}/mermaid version")
  end
end
