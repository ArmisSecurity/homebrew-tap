class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.14.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.14.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "e88f0c06bcbc844b4e8fba1bf743cf3952f20f3952a6e3976975c6a37dbf6a08"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.14.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "b30b42d75ec664e0b53846cfe975c842198ed798ddc5c378595737fa130b4783"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.14.0/armis-cli-linux-amd64.tar.gz"
      sha256 "01d82e351a847e9574b39d2a96b7413ece88405cbdc9cf837b2ed7dab47f397e"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.14.0/armis-cli-linux-arm64.tar.gz"
      sha256 "8c8653301e4702e98eee44f85ef965e7a50ac924df4059e9d9925ee3b624f1b1"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
