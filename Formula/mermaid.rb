class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.15.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.0/mermaid-macos-aarch64.tar.gz"
      sha256 "115a92bc3b0f1ddc2f3b2944fd58cbc0c3ee29225c21622b1f9b5dbd872555cf"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.0/mermaid-macos-x86_64.tar.gz"
      sha256 "bd89ca19a9a386171d84f9877941133bbdd301a354418d3fd7edce9b4f2c5b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.0/mermaid-linux-aarch64.tar.gz"
      sha256 "1f1b1c0769d498790f0cc953f8a4f7c75a0e48f52c11aa35035778f3c593c2a1"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.0/mermaid-linux-x86_64.tar.gz"
      sha256 "2a63d64f031f20ee518b08b5d4d8beabc4b59a3802fdb48ef79bd72ef3c25001"
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
