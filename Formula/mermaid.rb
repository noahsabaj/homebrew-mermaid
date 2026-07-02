class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.14.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.1/mermaid-macos-aarch64.tar.gz"
      sha256 "5b12225cdde9010b16faa28d48d0c69ad127601eb937de3b974e08f0ec268624"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.1/mermaid-macos-x86_64.tar.gz"
      sha256 "2163a14922aee8d59e316bc4e0072b771f35de5604b3036c2cf01e68fb87185d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.1/mermaid-linux-aarch64.tar.gz"
      sha256 "f58d1ce56d0f37e09834f166ef71762b31c7e90f6db2e6c5156425f5d869fe9a"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.1/mermaid-linux-x86_64.tar.gz"
      sha256 "732fc75bde6166b03321e7040930a18fb6f3ba228e505dfac2293489d08e5cb6"
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
