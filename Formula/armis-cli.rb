class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.3.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "da67cae78288da78c2ff4e86b7601249862ccf22d5a069895211e7827d27d0f4"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.3.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "30da969773071409a13cce377145b75cc10822406f2f1cdfcf6e2341cc3ac97e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.3.0/armis-cli-linux-amd64.tar.gz"
      sha256 "cd706380d343b5ae7a2735e7ff62139b815732f6d0c39c156836e6107e1c00dc"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.3.0/armis-cli-linux-arm64.tar.gz"
      sha256 "e0968c6e0cd69a386354451825a9ed900bd5adc598dd6a64c32b6dfe35e22bce"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
