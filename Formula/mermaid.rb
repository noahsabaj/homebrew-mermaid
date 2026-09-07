class Mermaid < Formula
  desc "Open-source, model-agnostic AI pair programmer for the terminal"
  homepage "https://github.com/noahsabaj/mermaid-cli"
  version "0.27.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.27.0/mermaid-macos-aarch64.tar.gz"
      sha256 "7729d1e58e3f1d1fe3e893b53274fe999521d352e7c6e7d7156be4d66eea92ea"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.27.0/mermaid-macos-x86_64.tar.gz"
      sha256 "1ca2a671ca5608652b54fa43a29f711addda77f36b61aeb5ea92f8f43db775fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.27.0/mermaid-linux-aarch64.tar.gz"
      sha256 "ceb7d2cd6cf42edd6277097f29937a19c74dc349bff62e8dc0b687ecf96eb0be"
    end
    on_intel do
      url "https://github.com/noahsabaj/mermaid-cli/releases/download/v0.27.0/mermaid-linux-x86_64.tar.gz"
      sha256 "f43f93c5a2add3c6c6d7e90d600850ebaad32c9b01f10de9425fd000566dbcea"
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
