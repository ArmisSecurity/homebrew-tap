class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.17.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.17.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "6b87c3ef89d93357867362d91a287a4dbea68c3a82b3ff7056ac66b1b4fb62c8"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.17.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "a9469c537bdfb0c1bb97cdb06a82342121a1bae5e3f2095cfb2daa119543c85f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.17.0/armis-cli-linux-amd64.tar.gz"
      sha256 "c9243eec09fc4a854c56eb5d08797e72be212ddcf48e6c58f921320924743922"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.17.0/armis-cli-linux-arm64.tar.gz"
      sha256 "3aec0ffab0c1066691b8851f68c2b9ec9c3eb49fd44696e002872277db825ea7"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
