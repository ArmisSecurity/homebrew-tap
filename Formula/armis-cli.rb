class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.16.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.16.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "d42efba398ac99d933044d2ad850aa132dd2ced1b26255f1daaaa93d3585e9a8"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.16.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "c4ffd88ad802c8bcb9f58d82aa48fae705f0f0463523dad3b7858666f318da30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.16.0/armis-cli-linux-amd64.tar.gz"
      sha256 "c91c998e2d7e6daeaff21ca75884a18ffa9116679e280e1c331f6a2b2fa2e610"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.16.0/armis-cli-linux-arm64.tar.gz"
      sha256 "2a21b38e2aea289902886697adebf1f5ca78c8642ae9678e218ce01e8561e19e"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
