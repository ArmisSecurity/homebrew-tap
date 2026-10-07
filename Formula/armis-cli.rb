class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.24.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "4735ce5a6f1ef6902047243f3133d23e72b845989d80ecc74800a6b23596afb1"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "ac46cdd4705fafcdbd248fc07f69d6fd55acf904f0ea4279a290d979dc86e7eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.1/armis-cli-linux-amd64.tar.gz"
      sha256 "9ee9e37316fe96dc4015f509a35b1a37d0527afe7c15d867fe2cbc91cf22ffc7"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.1/armis-cli-linux-arm64.tar.gz"
      sha256 "0596ea507ec26015b45ff6a5bf6ff8c9ff861b8fb00d007f418d3721ad220db5"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
