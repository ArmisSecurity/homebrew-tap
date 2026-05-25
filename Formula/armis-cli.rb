class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.9.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.4/armis-cli-darwin-amd64.tar.gz"
      sha256 "6bdae26873b63534674346da105f882ebcf53940e67157fa19e6803c692e660a"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.4/armis-cli-darwin-arm64.tar.gz"
      sha256 "b0832aa84374b2df5aa94055431d680d3f7849405f1a628e14d70ebd8254143d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.4/armis-cli-linux-amd64.tar.gz"
      sha256 "6327c3380976e5525947b05cb5a7dad74265a26b91663472999d5ff7962e7e17"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.9.4/armis-cli-linux-arm64.tar.gz"
      sha256 "94541288065560b476cba272b2d2d8d41a2e1d2ac22730c21d029d3f26473228"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
