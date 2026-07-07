class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.18.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.18.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "e12cdced9ce8cf504e60837047615726d652d8fe0b5fa08fa00841a5348b92ef"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.18.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "289656c271624d25084962791621a039a7f03e8e065ee74e2e3bfa208fe511cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.18.0/armis-cli-linux-amd64.tar.gz"
      sha256 "82ba45a4578a2862f17c9214acb9439b5b1d90cd6927885ba0df1ceb4657d80d"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.18.0/armis-cli-linux-arm64.tar.gz"
      sha256 "0153a172265613b7f77cb34c327053b65560d9b3105e7e424444b3c781a4c191"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
