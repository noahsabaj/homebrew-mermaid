class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.16.0/mermaid-macos-aarch64.tar.gz"
      sha256 "c0ead8a94baa28094e4527f74e4613968e192d8da7ea265ed4bc586b9c01d17e"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.16.0/mermaid-macos-x86_64.tar.gz"
      sha256 "cc45f0e16687ac0d7c2b5087a5735d8f7c4ddf3606bb830394ba1c4d700711e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.16.0/mermaid-linux-aarch64.tar.gz"
      sha256 "471bbc7db146acb27465be069ad1be531fd3423711b015c38f4711545006b60c"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.16.0/mermaid-linux-x86_64.tar.gz"
      sha256 "e146f4ee2430a5f589190747c5f7f1e1283380dca6f2989f784260a2c2501fb3"
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
