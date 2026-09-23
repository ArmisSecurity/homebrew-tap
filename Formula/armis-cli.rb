class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.23.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.23.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "e6524428b0990a4f05caf7217b38cdb7515744ae20038828f8763f636ae8babc"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.23.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "a548bfe44c0fb3482dc02a44fd08ab5100127f7438cb1f8f893b01473a69f150"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.23.0/armis-cli-linux-amd64.tar.gz"
      sha256 "03490ae0f6fc34f96f34a92d2b59a56b4e3a8136d163bd3c886879103a3a7b02"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.23.0/armis-cli-linux-arm64.tar.gz"
      sha256 "3e9b72b685d8c501e2234ced53ede9821f7381de94156f561c3664011b986776"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
