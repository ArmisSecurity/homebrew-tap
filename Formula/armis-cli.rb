class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.24.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "c72e5a7f54dfc2cf101a31737136eb91392ee04491b584f2c4c58d63099570cd"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "8e3304aac6853d6be8266cdcdad0ebc41d08974ee521762970ab7ec649ff8315"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.0/armis-cli-linux-amd64.tar.gz"
      sha256 "7301fc37c505ce145273a4d39bc45a012a05980b1ae86475a347c12a9eaf899b"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.24.0/armis-cli-linux-arm64.tar.gz"
      sha256 "ed1c9476ac523caa2dd15c41a7a3e69694ed8dd07dc920866c77210958463377"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
