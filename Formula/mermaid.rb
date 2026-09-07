class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.26.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.26.0/mermaid-macos-aarch64.tar.gz"
      sha256 "5e6081405bbf732e04127613c0ade14e9fb7bc96da06276a8cab40c08edcc8c1"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.26.0/mermaid-macos-x86_64.tar.gz"
      sha256 "56785a50815601b13890b2da752415f290bccc34541afda78fff813437940aaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.26.0/mermaid-linux-aarch64.tar.gz"
      sha256 "8fbc0037a27edd9717cc5eeba308296544112b627203d225ff9916b88e545339"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.26.0/mermaid-linux-x86_64.tar.gz"
      sha256 "68e8a73561a647e43331f7316fac734aa2e2a945da9259e802504742464bc10e"
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
