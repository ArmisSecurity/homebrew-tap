class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.22.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "a9bfff6d8f7e90dff51e9d6d49ea8f3fc9fa24522c1020d0c2766bd4728f2f55"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "689a82afcfe25cbc1df51921be52ed43b656264ce19d31b152be201d6feb445d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.2/armis-cli-linux-amd64.tar.gz"
      sha256 "a1daf833258e1ba7c838bb969ece67941fc56bad2b909353b324760edc914d80"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.2/armis-cli-linux-arm64.tar.gz"
      sha256 "16a1e0ae3a2391fdceee41b8e29c76984cdb469e14b384f8a074c71f0e6e8bc9"
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
