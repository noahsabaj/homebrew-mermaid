class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.20.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.20.0/mermaid-macos-aarch64.tar.gz"
      sha256 "cf6fd44af1c896b6c8615c241c0c9fdf2dc2aeff5ec53dbe5621cdbd09ad5d6a"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.20.0/mermaid-macos-x86_64.tar.gz"
      sha256 "cd58c370625a26a4562cab1af5bfebe5d9c19c6262b068033f97b37f8a91ad99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.20.0/mermaid-linux-aarch64.tar.gz"
      sha256 "c17a378529c9683c3a5b858cea8d06cfb39f8055f36293168b2c7769a6f69d30"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.20.0/mermaid-linux-x86_64.tar.gz"
      sha256 "af8a7a6c96f2a626762ba84c6f0c96718147b3e4a18880c7097b5751ffab3745"
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
