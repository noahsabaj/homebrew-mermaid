class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.14.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.2/mermaid-macos-aarch64.tar.gz"
      sha256 "fc6f79360170d6843d4a5fba15138d48ca008c7ab5605b10581ca066edb25dc6"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.2/mermaid-macos-x86_64.tar.gz"
      sha256 "8a35a5036790c4ad7f145483dfccedb06eedd56c66ac2bc63aa2c517d343a6ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.2/mermaid-linux-aarch64.tar.gz"
      sha256 "02601418722e901dc97cd4226ec9589e57070c87358a6d210d4f9917519e3367"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.14.2/mermaid-linux-x86_64.tar.gz"
      sha256 "656b061daa1760d4e884648a2d8270ba882170003f450e74500069f5324011a6"
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
