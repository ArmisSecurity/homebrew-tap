class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.4/armis-cli-darwin-amd64.tar.gz"
      sha256 "2809f7b5281965b7c826bb7d53dd876b91fe587b9ade6d25dfaea626a508bcb0"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.4/armis-cli-darwin-arm64.tar.gz"
      sha256 "bfc5621460cc6d5f7bd47c84222a5fa1cdcc02dbdfbec28be9a12ec91f3635a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.4/armis-cli-linux-amd64.tar.gz"
      sha256 "4a29458925ad18585dcd28050991eda7356881cc7e2d2a970c0ab0e1275eebc1"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.4/armis-cli-linux-arm64.tar.gz"
      sha256 "cbde45ba36bff5f8b1dddfa8e4c5853be01e324ebf6813d1d6cf93c8d1749b48"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
