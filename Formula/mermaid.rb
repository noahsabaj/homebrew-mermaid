class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.21.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.0/mermaid-macos-aarch64.tar.gz"
      sha256 "a0b228b79fe51d21f94d28dbfb2e6e6d4f7cd4f1577df17694ca96a03477032a"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.0/mermaid-macos-x86_64.tar.gz"
      sha256 "a45ab2a4572cbfbc629859b0bc4825ec857bbc1c496ce22789d01c8aa3889c06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.0/mermaid-linux-aarch64.tar.gz"
      sha256 "c58ff8e1e3986b205dc42ddef7093ee597a38f52ec4a3b53b4af140e216829dd"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.21.0/mermaid-linux-x86_64.tar.gz"
      sha256 "5598399176e37754a4f2ab89e2221bab4182d08eddfcd63128dbb10466835279"
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
