class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.25.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "8dfe1287c461baecc694493ab94cac764e0383aafe719102e391e5ec5a673854"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "dcf1459e37e945c55f9876a428baa1e3c5d9bd4a704d0cb43c03f6ffef4f7a9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.0/armis-cli-linux-amd64.tar.gz"
      sha256 "767fd90015fd7fb60cc8818cbe728288bcf7d5ef95d48f325ce59959db3922ff"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.0/armis-cli-linux-arm64.tar.gz"
      sha256 "adeb69c2fcb2b2c4682a340d128e7b707c0dae9de33fb7dce5428a4e159bd755"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
