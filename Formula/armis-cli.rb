class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.6.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "82548b8236a00f7d14bda3c02953738f9db116da3da59de006e9752207ba729d"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "2a425b1a34a5dc801302b5eb8adf7e06272c2808ac6effd37fb06f513ff3e78d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.1/armis-cli-linux-amd64.tar.gz"
      sha256 "a9f81db16f704e65ed41b70e4735f4ad2449a47bf188f7bbea416870bb74cfd1"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.1/armis-cli-linux-arm64.tar.gz"
      sha256 "a5c39ecf66d5d35255ef86e545c7a524aaa247cbcc343eb37339b48ba5a720e1"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
