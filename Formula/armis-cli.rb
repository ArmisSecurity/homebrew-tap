class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.8.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "81d8e2e9a1f81e12bf894e538ab6ad99b8b674402f5f3901b67b97568f48ccd6"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "f35fd6fd757f0f6a6724a81728051342aaf8ecdd415b1a4b6503053b78a0c369"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.2/armis-cli-linux-amd64.tar.gz"
      sha256 "fc8cc5077a69e5a1742cca61323fdccd085e5676d61ef08eb3a23f9b0b6e1a72"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.2/armis-cli-linux-arm64.tar.gz"
      sha256 "ab660e26a846c1044f258ca99870f78fbc8955012572e8a8f3d705c93d623dc7"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
