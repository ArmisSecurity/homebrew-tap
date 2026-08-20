class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.22.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "c6ceedb1e8c07e4ff284628d06419e21c0208769c6daa3736c70d53b6fb5a6aa"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "dedea009745a224524fb2dc6d4d70be9ca21a5e77e2dd16599267e5ae1dc69ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.0/armis-cli-linux-amd64.tar.gz"
      sha256 "b4d309663e9e0c393515d23f638008a0cf8408e8ac16208d93188ebd6f28840a"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.22.0/armis-cli-linux-arm64.tar.gz"
      sha256 "a6ecd234d5b9304d6a3c61a28432cf2f13e2b18f40873a2e252aa6c015c059f9"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
