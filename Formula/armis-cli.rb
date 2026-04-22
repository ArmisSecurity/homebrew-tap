class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.6.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "57f3ae40d421cc81c1cd1b93539d55c7c3b7e8c502d8db407e673fdb5f73c3ca"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "447e11741d92d56f005e1f960b85a8406d3989df8203f3127a25dbae63966a06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.0/armis-cli-linux-amd64.tar.gz"
      sha256 "2320f6265f48b4d7dee2f52257025f275498737800c10cdb449a1809945a947d"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.6.0/armis-cli-linux-arm64.tar.gz"
      sha256 "34019d50d333107512bfae33585014be85cc41451b52fad3ce9fb86764da398f"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
