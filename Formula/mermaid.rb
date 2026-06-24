class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.11.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.1/mermaid-macos-aarch64.tar.gz"
      sha256 "eb651321acb1da0ab2993e4e85ae0e4033bbe9daba13268860dd55ba3a197196"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.1/mermaid-macos-x86_64.tar.gz"
      sha256 "399ad428210f117e0442fd949e757a0f5ebdce79e6abfb73c60a3b18f1fbe256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.1/mermaid-linux-aarch64.tar.gz"
      sha256 "4369ebb61df6d38e0091a9bae7eb9561cab73d686d7899c61464589535f6d730"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.1/mermaid-linux-x86_64.tar.gz"
      sha256 "4e8342a203a6c53cc5b6b201badb35f379604f55b94c9b58c74d6a0804a68cdf"
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
