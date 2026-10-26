class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.25.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "e61518bd2d77afff2004e66d82f62704a411d967f4a8ca8006b150e74b194718"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "1eccf4f9688d1250aeeb9aba3f772a6c14a5e7955cfa1d2b4c26d7df804f5d36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.1/armis-cli-linux-amd64.tar.gz"
      sha256 "e1be7de2f64c2dfb64fc6820be6af6d10db03b33e68887e8d87dfd1b310f1be8"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.1/armis-cli-linux-arm64.tar.gz"
      sha256 "6151a8ab5734a24c3f34fd168eea226b75d435e1705828114827f21bd664b4b6"
    end
  end

  def install
    bin.install "armis-cli"

    # Shell completions (available from v1.0.8+)
    bash_completion.install "completions/armis-cli.bash" => "armis-cli" if File.exist?("completions/armis-cli.bash")
    zsh_completion.install "completions/_armis-cli" if File.exist?("completions/_armis-cli")
    fish_completion.install "completions/armis-cli.fish" if File.exist?("completions/armis-cli.fish")
  end

  test do
    system bin/"armis-cli", "version"
  end
end
