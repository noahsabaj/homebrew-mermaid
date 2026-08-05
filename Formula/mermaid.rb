class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.19.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.1/mermaid-macos-aarch64.tar.gz"
      sha256 "6340b7648e620e6ce5fcd6eca83e3665fa61709749535a11780e12d6d9e66a78"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.1/mermaid-macos-x86_64.tar.gz"
      sha256 "6c90b3f94d1e5eca9841c29e4539cc8860830b8491e8e20ca17b5c204f7b089f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.1/mermaid-linux-aarch64.tar.gz"
      sha256 "8549bf8ed63529a89615776740e32c64f7ff395833147cac1a6b41e252395179"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.19.1/mermaid-linux-x86_64.tar.gz"
      sha256 "f32dad3ccadc4edc608a187061bed9418276ee5d4fe30d2e61eb259121c5ee08"
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
