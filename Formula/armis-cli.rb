class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.7/armis-cli-darwin-amd64.tar.gz"
      sha256 "3dce37e287479d9119a11beca53aaa6e4e33de4ab4213cf4f68e603926b4146c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.7/armis-cli-darwin-arm64.tar.gz"
      sha256 "c81cf0156be71052eb918330d59f80d0c233a19e6f19d9700f9cc91bac48d852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.7/armis-cli-linux-amd64.tar.gz"
      sha256 "307cfc03d0081d3534e8ebcbce60d0380d1d3679bfed97954e18c12e0bbf80aa"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.7/armis-cli-linux-arm64.tar.gz"
      sha256 "62be7976698588a51135389e949d5ee8c937a27eb76428d0d379931619de754d"
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
