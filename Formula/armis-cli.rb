class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.8.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "13ecef07362823eb2e98857903675fc72ff4f0cff21e2544628a181904d318fb"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "0aade877a5e3cfed296fe7aaaabdd4c70847995091353451b7ee86b8fe9048eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.1/armis-cli-linux-amd64.tar.gz"
      sha256 "c21346277e97397bfdfb7634066ba2deb9d6f72f5c6966789736b7dc5caa78b0"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.1/armis-cli-linux-arm64.tar.gz"
      sha256 "45b2b221a2fbb1d85e5535c6be84c5f872cf4fb1c7aaf9f86e1ee8e66e24c8c0"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
