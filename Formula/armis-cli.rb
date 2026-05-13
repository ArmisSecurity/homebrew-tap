class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.8.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.3/armis-cli-darwin-amd64.tar.gz"
      sha256 "b0a21523e0054ac0eddc59136a3b2f46ae33e0346d1d25dde910602690847617"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.3/armis-cli-darwin-arm64.tar.gz"
      sha256 "08313b51d82e41c79117ce864c9ada564cd42494e736c3d50bb153b4df5d506a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.3/armis-cli-linux-amd64.tar.gz"
      sha256 "80bc449579e9bf89ecd12816485e28d16e653f1ff8283841c5d19b13d924f591"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.8.3/armis-cli-linux-arm64.tar.gz"
      sha256 "a719aa242ebc4b7606d9a9ccdc32a219831c2f8f60632f5e3344291df9b5354c"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
