class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.23.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.23.0/mermaid-macos-aarch64.tar.gz"
      sha256 "01d41275b38b65306bd77dc937cac4ce26fbb8c0156b733425a093cbc5567bdb"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.23.0/mermaid-macos-x86_64.tar.gz"
      sha256 "202aa0350a15e52b6bf8388befbac7bab2565c8ea98fa45db77943825f4f2b1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.23.0/mermaid-linux-aarch64.tar.gz"
      sha256 "f9b35b85391d0c30616585e37a9e84077642d09748e5f8ffa8c46ad4965fbeff"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.23.0/mermaid-linux-x86_64.tar.gz"
      sha256 "28ef60acc2ae372caf34aed82092b746b04eeb9e89c1616c30ed3fe01fb95c49"
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
