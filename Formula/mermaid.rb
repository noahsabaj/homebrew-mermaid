class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.0/mermaid-macos-aarch64.tar.gz"
      sha256 "cd2d6a1d60908e384e3f2eaff08376607de4a14f7bb7b6996d0277ba164690a2"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.0/mermaid-macos-x86_64.tar.gz"
      sha256 "1568b3e4f80d80b98a4af221063a85231cc0f3304ad3208f4f2738bfb20ce702"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.0/mermaid-linux-aarch64.tar.gz"
      sha256 "49a7f12ce3f7a1fdd7e6d60abd4127f13c987f0f6fca480251086e6638743609"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.11.0/mermaid-linux-x86_64.tar.gz"
      sha256 "dac27837c135c5bc9c07512e48a9d7227240635475d1a02a9587f699a5d48c0c"
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
