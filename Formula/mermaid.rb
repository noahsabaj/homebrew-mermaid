class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.15.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.1/mermaid-macos-aarch64.tar.gz"
      sha256 "4b0379a0e31c0f6ce35db2f448a4a209408c07ac5c040c9387a9b7ba4182a56a"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.1/mermaid-macos-x86_64.tar.gz"
      sha256 "027dab95f8020971f4e635149a82ebfc191136372fa89aeea8eebc15b79eb507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.1/mermaid-linux-aarch64.tar.gz"
      sha256 "e30379788e753d4f07eaa7b8f9b7f4873595f77c5462003b3c8b95211201373f"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.15.1/mermaid-linux-x86_64.tar.gz"
      sha256 "8057ad25b170d53dacdebde1b56ded2683ebfb779e8e715e8d4b544f99435b6e"
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
