class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.12.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.2/mermaid-macos-aarch64.tar.gz"
      sha256 "903b17bc81c29647f3d533b7aa20ca6990e49e6cd114f3e29346f343f2176148"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.2/mermaid-macos-x86_64.tar.gz"
      sha256 "a82c35e7feaccd1a2edf2d2e3fb1692de4f8091f633d4b34df3c97d82e1d7e5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.2/mermaid-linux-aarch64.tar.gz"
      sha256 "299227810f9736c4c841b6f50bdcf2cedf47e9433ccef8411affe2fdbc586a60"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.12.2/mermaid-linux-x86_64.tar.gz"
      sha256 "c86f75d2f636629196f2739a22648c70315a04ade37ebd499d80ac85f7afd7b8"
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
