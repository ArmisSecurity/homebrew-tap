class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.22.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "1c8bf3f78a51b8ba018ff35f98c7a4cc8cfd9187216e90ed2eeafa705b42442a"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "1cc25f18ab1f22a612bed7fb52a9abacfcf14a6f7a21662f66dd7275ac201fe5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.1/armis-cli-linux-amd64.tar.gz"
      sha256 "0abf660a6e39a959c5087bebab323a526711cff7bf0d095e1a7ae04be903f009"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.1/armis-cli-linux-arm64.tar.gz"
      sha256 "6beadeed47aa802834da1641660cbc15552134ff25a3d96405ce819de1f9082d"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
