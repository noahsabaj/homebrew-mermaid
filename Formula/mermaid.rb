class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.21.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.1/mermaid-macos-aarch64.tar.gz"
      sha256 "7bd82203ea8c914d48b479b8203185976a65d77ab10b38ecbe17356219452c8a"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.1/mermaid-macos-x86_64.tar.gz"
      sha256 "49f4018153cf65246533c6fc895adeab3eb0331db8a7b111af2bd003564be947"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.1/mermaid-linux-aarch64.tar.gz"
      sha256 "f83da8c69a01c767cb2c6c76811a1aceb06285eaf39b095b708cec5c53b0c984"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.1/mermaid-linux-x86_64.tar.gz"
      sha256 "6f8365bc32c6a904622fe756106dfae806e01f071cb12fbc8ad5432c817a3b81"
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
