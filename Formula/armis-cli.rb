class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.9.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "6b165e59d41fe1df5660e359e9ded1bbed33733bf7f28c9fc5414ef2864c3d32"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "20d1a10da0f7f68cad67158207ae1bc8550eb6df821e4ea58ca12c5e790d276b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.2/armis-cli-linux-amd64.tar.gz"
      sha256 "f4626304b382384dffaa3203ae418d5048b43f076a13e8fdc5c775ac22a2f19e"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.2/armis-cli-linux-arm64.tar.gz"
      sha256 "e786efa3e5b740fc3bfe9bffa7ef68e56e18198f84a9ed955965b4c0ecf28877"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
