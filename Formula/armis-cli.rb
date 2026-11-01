class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.25.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "22e21c08a1fb7ed0c4a38fe9b1320db841604e2bbcfd0d30591df6b70a61e02c"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "1522e49cf1f5e227a44164fca5649e427417cd92a89c2cd4b8661afa85356f8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.2/armis-cli-linux-amd64.tar.gz"
      sha256 "d093c0a69c126345c461fdb0bd7814f247e6b058b55d4bf954ae037533b88bc8"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.25.2/armis-cli-linux-arm64.tar.gz"
      sha256 "c5877f002f33f7f70232fce0861c470ffdb8f7065a8c97d8a5de65279deda8bd"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
