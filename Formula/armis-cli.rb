class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "25c9d27a7779999f740f0ccb71731b87778ad35045b32c813f67fe670f6f7001"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "61c7a445445f28c6384b09f08bd3ced185783c4fc92976cd153505125138fe3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.2/armis-cli-linux-amd64.tar.gz"
      sha256 "5d6d190be7cace2ddb5a39f84c53873afd80d98aff543b30efff5bfd791fbf8b"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.2/armis-cli-linux-arm64.tar.gz"
      sha256 "892c9361eb8f44319b56ce686ec129a5f8d79c442e79a5be41fd3bf30dd43119"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
