class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.8.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.4/armis-cli-darwin-amd64.tar.gz"
      sha256 "53ff49e7e34eff8956b3e5cb99794e4655a645d508e860430d42f2ee34ef3be2"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.4/armis-cli-darwin-arm64.tar.gz"
      sha256 "c5625d5f8f4b6d347295becd6874b8b07b7432361a9877d271f2104946a9eec3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.4/armis-cli-linux-amd64.tar.gz"
      sha256 "b15e596e6857c143e5294567896158e4a005c8ee1cc0b2e6bb40d406fe54d408"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.4/armis-cli-linux-arm64.tar.gz"
      sha256 "a0cc0570b76568d6a9122c5210bbb43bee567e0243fb0da75a07a832c801ccb3"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
