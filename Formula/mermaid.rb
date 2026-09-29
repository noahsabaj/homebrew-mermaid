class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.28.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.28.0/mermaid-macos-aarch64.tar.gz"
      sha256 "818e9b7da6d2dd189864bed4e153dd970912d823b96be43e7ae545b0a18dcefd"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.28.0/mermaid-macos-x86_64.tar.gz"
      sha256 "2dfb1ba02c9201e4b27889e5cee3add22a25ede4f5491294205610dca2369c73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.28.0/mermaid-linux-aarch64.tar.gz"
      sha256 "2c15fb3c8897027b4fbe5e7f8425728f422f1e4a2a96dad5c5407b662ed117ab"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.28.0/mermaid-linux-x86_64.tar.gz"
      sha256 "7f2d610070f3e1e3714a6e62657b98096a1f28d790c8045aefc368a80de82dbf"
    end
  end

  def install
    bin.install "mermaid"
    bin.install "mermaidd"
  end

  test do
    assert_match "mermaid #{version}", shell_output("#{bin}/mermaid --version")
  end
end
