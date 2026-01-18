class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.5/armis-cli-darwin-amd64.tar.gz"
      sha256 "01d9e7c097b54b72a7c9f5fb226850fbd4b95f49429c323771c0769afec9e757"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.5/armis-cli-darwin-arm64.tar.gz"
      sha256 "c7ca18ce59b329e66ef65cc6a50a07c7a321a15dcb9371a79126557e3e122f5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.5/armis-cli-linux-amd64.tar.gz"
      sha256 "2032981c0a6492bae7a6d6236a8d5d68b49ccdcc05bbcd2d175ec1ba20b609cf"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.5/armis-cli-linux-arm64.tar.gz"
      sha256 "43e657a50ef00d73e7096546b78ea7d76e166604b8a05cfc97e927c1397b87df"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
