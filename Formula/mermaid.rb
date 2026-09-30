class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.29.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.29.0/mermaid-macos-aarch64.tar.gz"
      sha256 "41f8b72680242f27dabd9c3d9767868e9b008b91f6974ca536098bdefab7f5cd"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.29.0/mermaid-macos-x86_64.tar.gz"
      sha256 "61d6c9cee5013989e26772929aabb398980e193c95f7416f1546442af10a1e95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.29.0/mermaid-linux-aarch64.tar.gz"
      sha256 "42c7a2013640b5ef901ccb074addb3fa4e94c0f45811946c0c4a3d39148eab6e"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.29.0/mermaid-linux-x86_64.tar.gz"
      sha256 "2abff1a48f00f6460a750d6a77cab1ebefff2629018c29aa9e450cf76e090de2"
    end
  end

  def install
    bin.install "mermaid"
    bin.install "mermaidd"
  end

  test do
    assert_match "mermaid #{version}", shell_output("#{bin}/mermaid --version")
  end
end
