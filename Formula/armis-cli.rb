class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.5.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "1b8a7a36050bd78ff545dd024892d2af3fce6d2bf9d90f2ff3622ff7354efca2"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.5.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "40fa201ee50296dba0e917a5eeda1e0ea17510951ac16f6577c9e77c7fc24d7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.5.0/armis-cli-linux-amd64.tar.gz"
      sha256 "7cfa5119acc569052e62e95b62cc2df040b3ee0b33bf3e64940ac0846cbb0c5c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.5.0/armis-cli-linux-arm64.tar.gz"
      sha256 "726549241382055762100dce9343b76cac5ae9df2ccd0221111d78943d21bbd8"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
