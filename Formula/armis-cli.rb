class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.26.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.26.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "d8d052750e0d51c657bea83973f2d03a03bff754fabe6cfd29ea9c12194058c4"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.26.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "e16ec92f44992538fceec2cfbf83349fdfd3021ccbd89360c490bbc4a516240a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.26.0/armis-cli-linux-amd64.tar.gz"
      sha256 "a58a8a4cdbcd2a3e065312db50d4cf16cdad4591b9338257c9de1492c9a31464"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.26.0/armis-cli-linux-arm64.tar.gz"
      sha256 "a3af6fe5e100d04c4d3c67553a93ac9a372f8130f25362fbe28350d708882cc1"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
