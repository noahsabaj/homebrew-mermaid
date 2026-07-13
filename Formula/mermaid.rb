class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.17.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.17.0/mermaid-macos-aarch64.tar.gz"
      sha256 "e8ab5351e3aff8ba83b9b8d8a74d42732563475be00b142a04a314e5dca66fa6"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.17.0/mermaid-macos-x86_64.tar.gz"
      sha256 "426de4fd8ed2f266c6ab4ac728e40a56883e422c3de859ee1e49801641905d2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.17.0/mermaid-linux-aarch64.tar.gz"
      sha256 "64e901d801ad28ef2228b8fc2796ef5a8f9dd786207b9959383c2a3e0deae8c2"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.17.0/mermaid-linux-x86_64.tar.gz"
      sha256 "a27d4dd76bbba6205f3ebeffdf64cb16e386252848b34d9e0cac5895ac2462e7"
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
