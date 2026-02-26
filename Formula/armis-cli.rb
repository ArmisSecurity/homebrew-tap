class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "89c520c37fe18b8efcd3422436a90b0e356dd59215398bf678eddaf62af6a03d"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "7bd6757d606e5238b26c4d5370503887f7572573890440dee0a1b7eb6df1a937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.1/armis-cli-linux-amd64.tar.gz"
      sha256 "2d8ddf9ad9e72c89d27ad4b32e34325275a89b5fed5337a695af9bc1d5331838"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.1/armis-cli-linux-arm64.tar.gz"
      sha256 "9377a711c8f71bb561657cb3a96b4c2966a25d8c47895a062797c5bc7a931f38"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
