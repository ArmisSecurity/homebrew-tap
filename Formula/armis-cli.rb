class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.21.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.21.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "10ae1e878ad76df869711209b2e3ce6c141ffd394d071939499a085136ba4479"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.21.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "878b17f69738e0f6ee6a2effa76f48c87bf019128e0ddcf40332ddc5c88e0bd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.21.0/armis-cli-linux-amd64.tar.gz"
      sha256 "0dd70782d7ef34e0c0307bb19cbdab8696577bbaf221e8fde02c29caed7f7652"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.21.0/armis-cli-linux-arm64.tar.gz"
      sha256 "ccee6955a03937ff66c2f128c5a6fd1efcf2aac49e567b4b596ce9c65ac0b070"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
