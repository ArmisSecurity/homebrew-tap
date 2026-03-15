class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.4.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "94205e352c6ae9becb9b9e9dd58de7b4de46a76ffe94fa31649277814625bef1"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.4.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "c75b23d6c19572b84c6fada28f10e158f68c416e70e0829a660bf80bb2857ef8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.4.0/armis-cli-linux-amd64.tar.gz"
      sha256 "4dbb17737fd565016d9a1c60933ccbc803f1329329f3ca6b706f945bc63a9d4e"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.4.0/armis-cli-linux-arm64.tar.gz"
      sha256 "9bc5a35cc530b2e26f7b2ad480a2f43e892aaac7d14504aca1c45f6251b83a41"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
