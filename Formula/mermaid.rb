class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.13.0/mermaid-macos-aarch64.tar.gz"
      sha256 "782de56ef1ca6d84ccdc36bd6edf3f66143daf2da8585b1d699e53b589ce7b56"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.13.0/mermaid-macos-x86_64.tar.gz"
      sha256 "2c23287e4c433506f1e8ee7037be8daf8028f7fdc2071c825e05788675a3a73e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.13.0/mermaid-linux-aarch64.tar.gz"
      sha256 "254925edfa12b7f693e54a1563de3665df316c99721cd441cc12566ab5bb5855"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.13.0/mermaid-linux-x86_64.tar.gz"
      sha256 "90ea9e109903fd488d6c86f8ff36789a3854b058adbd711e48b5b610d128927e"
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
