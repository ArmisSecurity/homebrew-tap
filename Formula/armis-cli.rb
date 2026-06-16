class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.13.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "e9414299f9c485c65c407b80d0f4fffe1daf3746b217a5fbdef4aa50a16c3a50"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.13.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "add5ff1c19075f7da98928cf3dba6fbdc440aaa7fc68bee165679ac5f8cac14c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.13.0/armis-cli-linux-amd64.tar.gz"
      sha256 "369eb7368dbbcc350654e041a8f12f72d57d4f2bd7a98594230036e67af070af"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.13.0/armis-cli-linux-arm64.tar.gz"
      sha256 "7282ff3a6f40f1919c9c624977cb22ac9468d3f0ad68bef2eda81fd406c2df9e"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
