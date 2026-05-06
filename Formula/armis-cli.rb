class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.7.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "e6e82cff08ae10d23ac5925bf212c35f1c64cfcf67cd210d107a2bc5b28758af"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.7.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "2d249cc139c4b9bc45fa7fb795841a486d99ce12a4e9c0dcb757b6dc6bcc1cbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.7.0/armis-cli-linux-amd64.tar.gz"
      sha256 "92aa0f5f9a08198895177f83693056e338cd8bd0c13c84dd91c9257e67484163"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.7.0/armis-cli-linux-arm64.tar.gz"
      sha256 "cfc8a7e085e662b23c98ba219a8e5bb18df5959d79a430eb8a27d20eb4271fb9"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
