class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.10.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "2d0615a3da70bbe424a6d012e829ed926de2d93d6125d4a23fa2e5169f8e8959"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "05c4c562e45e74f335172eea5d3e83d9892c327c8e370e5a9cb3d2afe255aee0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.1/armis-cli-linux-amd64.tar.gz"
      sha256 "355974ec5c6ad6b53bf302b806f511f81a70cbab04634cb1c3918986ac692bc8"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.1/armis-cli-linux-arm64.tar.gz"
      sha256 "770043e11cd17b58a881d96f115ff7832c5c82cdae028f6945e5103acf687cec"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
