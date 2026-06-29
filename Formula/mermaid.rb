class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.12.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.1/mermaid-macos-aarch64.tar.gz"
      sha256 "8e81359bb031bdbfe6231543c9b3347ff7af9ee0adf50da5e0bb26219b6bfffe"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.1/mermaid-macos-x86_64.tar.gz"
      sha256 "bae1c0e0e003c30d9b4e2a544c443620ba354467dbd1a386bad42e56fbe2ef86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.1/mermaid-linux-aarch64.tar.gz"
      sha256 "51547c089a3b3e6778fb53a08bf22c009ffe26157f1e79e175203fd3b3fa9333"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.1/mermaid-linux-x86_64.tar.gz"
      sha256 "d2d9fc0818f4b7107134c51d6ab5bc14312f690b41fe4637b01c19f5f7a77cf1"
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
