class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.9.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.3/armis-cli-darwin-amd64.tar.gz"
      sha256 "3fed32704609d24ea58c8b8e8aec26f1d7bff7ba60fecb1972d2e7f859e65be6"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.3/armis-cli-darwin-arm64.tar.gz"
      sha256 "46c94b126a10e582ce1bc99087525dcf5b9f2cb1ae0fe2659ec037e035014c1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.3/armis-cli-linux-amd64.tar.gz"
      sha256 "332888b6d5d462a50fd6e87f962a7e7eec4ac72e8bed6d69e8b84eb0265dd645"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.3/armis-cli-linux-arm64.tar.gz"
      sha256 "7acd62e6b46f357e126d27052c2b85315ccbcd405262c8f50291f00f6a7b33dc"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
