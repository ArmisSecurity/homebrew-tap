class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "d9a73ffaa2dc20ab48fd282ca2f341e09f9187bc1ea5b4303f4e1f1e69fc8f95"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "e9c4c56c48b5b9e2a7785413e471edf9617a08cabd8bfbaa2856a30755cb221a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.0/armis-cli-linux-amd64.tar.gz"
      sha256 "b81d80e2326d751fcc2a91407a452dca65c7334c91344b5abf6fcdeb71dd529d"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.0/armis-cli-linux-arm64.tar.gz"
      sha256 "7c07f47e62b8dd0cf6f915fa2ba2559946b47e5ee96f85da4141610bcb9a8651"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
