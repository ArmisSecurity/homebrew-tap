class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.19.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.19.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "bcb4338c6f617b542497996b0ffe0869abeee30e8044535b1eb0ba39a29e5b0f"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.19.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "0bac6384f8427759262c1747970291dc7a71517efcd8c5b2f19be7dfecffb2f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.19.0/armis-cli-linux-amd64.tar.gz"
      sha256 "8293b0a7ef4d0fa411fa7fb50bcdf03cfd81ab506ff8830e070312026cd76828"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.19.0/armis-cli-linux-arm64.tar.gz"
      sha256 "299dcad96a8ecdec54a6c506832e5d5179ffb572cf1c53935ff55fb72101ece4"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
