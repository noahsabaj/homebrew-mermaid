class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.0/mermaid-macos-aarch64.tar.gz"
      sha256 "26018036ee991dd29b07694778edb18d888ca4cc5ad718e835cdf5ce54e8ca13"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.0/mermaid-macos-x86_64.tar.gz"
      sha256 "9e29df759a661972a11f19269f547c689d3aaeac411942bbe96ea1741230e827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.0/mermaid-linux-aarch64.tar.gz"
      sha256 "9b7b723bfa5af1693ff20b17bdb63f6e46b8d898dacdd19cab3c9366f4e6909d"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.0/mermaid-linux-x86_64.tar.gz"
      sha256 "50ba43c03d10c45c9244f04b95b6eb97a1840815887197879234b847e8d27e1c"
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
