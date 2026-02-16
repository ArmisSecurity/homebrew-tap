class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.1.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "46110796b3cdea980f73ee34800f739b03734803f12eb2bb9bafbc06e30e677c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.1.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "a98d20c31df1cd4bed5bcfeac78a3ee9f62b77a9a2dc463ab167ac920bd5e1dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.1.0/armis-cli-linux-amd64.tar.gz"
      sha256 "abd80302b0124466c84065f3ccd6b1857f6d205d854dc7a4146be75869639842"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.1.0/armis-cli-linux-arm64.tar.gz"
      sha256 "fc5f2a2e2926407c0674e336cbc92f0cc4ec92cd806bb035b4791374d174346e"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
