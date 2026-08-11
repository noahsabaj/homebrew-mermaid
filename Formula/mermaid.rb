class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.25.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.25.0/mermaid-macos-aarch64.tar.gz"
      sha256 "fa7f93f2c1eb426b6a6fb0971ec6713e2de6f894e53199b23baa6a7111d88385"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.25.0/mermaid-macos-x86_64.tar.gz"
      sha256 "d5d8ebfdab9c8958ebca040a9d5936180728812c248dba7aba1f4080e718d0cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.25.0/mermaid-linux-aarch64.tar.gz"
      sha256 "a6a5ee7ab553ad6e636f960f722a90372b2d59c2c33350b75209480a46272b51"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.25.0/mermaid-linux-x86_64.tar.gz"
      sha256 "61c3cd9789c7c6b253c4e3f2749e2be9a07055f3de4e030947cee9f0956b783b"
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
