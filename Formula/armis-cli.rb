class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.9.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "f7922301f63741a0c9a3ec625c9ee7794f6a382debbc381601afa36ebb559b1c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "e636feacfb1ee07df1fe3ea03d356e02181732f0560dbb6b0b81a71335737c9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.1/armis-cli-linux-amd64.tar.gz"
      sha256 "26db468dc6cde65b606ad7c842a024dc250f88c51e5dcdc68dcb24bbcc24ef72"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.1/armis-cli-linux-arm64.tar.gz"
      sha256 "0b157b0b608e46f35be30897479cc18ef99bcb92338a2cb3f6c5fa56f11e0d5d"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
