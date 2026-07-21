class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.18.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.18.0/mermaid-macos-aarch64.tar.gz"
      sha256 "a3208b9e43e881eed1e8e236bf1072fb8c22a08ebcdec8a12be81a391db9c038"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.18.0/mermaid-macos-x86_64.tar.gz"
      sha256 "eeb38d23c6a025b8b7726cd8b68ef0f037accbfb06d9be0174af1bcb13a9c232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.18.0/mermaid-linux-aarch64.tar.gz"
      sha256 "f12875911722f972eadaf63756840e8645916e7a1cc9e444126e11c9d96b1cd9"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.18.0/mermaid-linux-x86_64.tar.gz"
      sha256 "6892ca6f07e22a9eb1d7c6633b48be22eb5055fafd0bf44396747b5267cac3cb"
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
