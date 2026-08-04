class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.19.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.0/mermaid-macos-aarch64.tar.gz"
      sha256 "402029dee8afaa23b5046e4ed655c176398241a2f96ea4b9fbe7635fa0d7a3b6"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.0/mermaid-macos-x86_64.tar.gz"
      sha256 "29074ea230fe35de7e403fe62238cc136f692b4392ab01c22a658e2a63eca0cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.0/mermaid-linux-aarch64.tar.gz"
      sha256 "c71aee3f8564798168a42396e1d496c301a321065346d53661f6e02fc21bfec5"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.0/mermaid-linux-x86_64.tar.gz"
      sha256 "9e436882850f6d4cba767cfc891a95344087c6a48c62846a55e68995bd39943c"
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
