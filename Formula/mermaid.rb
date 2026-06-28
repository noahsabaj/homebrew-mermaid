class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.0/mermaid-macos-aarch64.tar.gz"
      sha256 "a34338b3d95a47b8674edf83ef710dfd71bc094dc67b394d0d3bd5cf14cdfd1b"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.0/mermaid-macos-x86_64.tar.gz"
      sha256 "33db5f6e1a35252a9ba53ecef052929bc503410ad8ee6310f9ec1ee0ba11704f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.0/mermaid-linux-aarch64.tar.gz"
      sha256 "98fc9c2a7fcd5bbe7f6c12fdeb6ac5facdb470e618a12c7dbf55c1540330eccc"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.0/mermaid-linux-x86_64.tar.gz"
      sha256 "312b87c5378a2cbfd153d44b648d182a44a82f45325821dd0dd6c0ccf12b9a65"
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
