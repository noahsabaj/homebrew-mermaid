class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.22.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.22.0/mermaid-macos-aarch64.tar.gz"
      sha256 "851fdb0daf08881a199ed05dc0ef34fd5ed0ddbc73c47d2f0cc5cccc6c35b4dd"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.22.0/mermaid-macos-x86_64.tar.gz"
      sha256 "84e307a2b64d7df09c0587883c7122be7bec6852f74607aee5e8e387029e6200"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.22.0/mermaid-linux-aarch64.tar.gz"
      sha256 "dd9120a489a44846d6724df42bd8986f6ed0a456a55c5bc507810ef0ce7dc1b0"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.22.0/mermaid-linux-x86_64.tar.gz"
      sha256 "a56ded7e7d20b41301054134cfde27c865d25b8a7e7b8c0b5f6a03ff76d5d487"
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
