class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "4e37f8d71cc8f2c5d3dcff1690d4a3210ddc1d1135f35fcfd34114af7f912019"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "1e71b3249272f6a8d0059dc379c90df1a1a747698815583db3e8649cc4fc3270"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.0/armis-cli-linux-amd64.tar.gz"
      sha256 "112d9ddb77066cf0af63860af4018cd8cfd993a6e3a74c579b55152a10b8c7ed"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.0/armis-cli-linux-arm64.tar.gz"
      sha256 "c1bb7b1925f332f16e8085de433a25664bdde4fdab3dfd76f33b7d286bdec4da"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
