class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "597226bbf8dad80baa09ca82b9302e8692250c115cfe5d042163865ad1a79326"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "4cfd36a2eeec2b0de22f6de46ea18c2ecf66685c616e0b8a18fea2c8ea7abae0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.1/armis-cli-linux-amd64.tar.gz"
      sha256 "3d11e4109ad741bcbbee8b96ee5118aa8d046d2423762c5861601073a7642e27"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.1/armis-cli-linux-arm64.tar.gz"
      sha256 "5346b08693a5f9ed6ef668842ba7ea7ff5ec7b2e3cd79a58d821edf54593020f"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
