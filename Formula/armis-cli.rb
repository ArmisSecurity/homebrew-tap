class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "d655712a49e94fd0ae64e1186219d43cccab74c4f7cf55cbf5099dc12e039316"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "e82789703bc778b057d298e7d149a341d6048c906a2415126c1d00ce10a32762"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.0/armis-cli-linux-amd64.tar.gz"
      sha256 "ef2c7326e48514610b58069904f41b30340f7e92b875d657513307f1925ff8c2"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.0/armis-cli-linux-arm64.tar.gz"
      sha256 "3b3d20635c201525629f7dcae094fb8f45c5c6b0409dcd960915b555da3f6133"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system "#{bin}/armis-cli", "version"
  end
end
