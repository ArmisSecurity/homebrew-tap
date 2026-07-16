class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.20.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "4e3afc8ee7d1f5df19f1c9d7b670c52b0d5a58a0b48a9e6427d200c8e5150b2c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.20.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "3b47d512994926d75c3c554498855c1595b6ab1d8c87260e34132d51c0a90ad3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.20.0/armis-cli-linux-amd64.tar.gz"
      sha256 "e11e03990a26994b21145a290e1a2f8b48676dfa2a30cfc368b64d3ab1de4e9f"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.20.0/armis-cli-linux-arm64.tar.gz"
      sha256 "127000d2043544cc53506fe08f6a2c7ac96da036f79bf5a06999a1b9948db332"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
