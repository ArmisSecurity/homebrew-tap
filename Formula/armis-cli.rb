class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.15.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.15.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "bc449e54e46cedeb9aca647f0508449164a5e9c03d2d0792825f19be69954e18"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.15.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "7831bc25f7dbe28a614c30aeabf60a1d775d64d7928d43705df53eca6ee4a4bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.15.0/armis-cli-linux-amd64.tar.gz"
      sha256 "a03fce10c32ba07c37a3dbfc4fe0109e1bb89ef599f23baf61b24c6d1e7caaec"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.15.0/armis-cli-linux-arm64.tar.gz"
      sha256 "7f7033b85d3bd38925c23a4656f2e45b2cdf7f7745677393791cd7094fc524bc"
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
