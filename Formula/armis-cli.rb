class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.11.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.1/armis-cli-darwin-amd64.tar.gz"
      sha256 "04ffac113def6c6de4b33073e4cdb8f5e2eb2e2cffa29bcacbbac5be87e44931"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.1/armis-cli-darwin-arm64.tar.gz"
      sha256 "60c6785b0427f6b1d71d001bcc16bd319e22daaf7ed74e61d96e988284c54282"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.1/armis-cli-linux-amd64.tar.gz"
      sha256 "2129206a35b7b365ab391bba8ae179cd129e6fea3dcc77091fbd6948a2624c01"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.1/armis-cli-linux-arm64.tar.gz"
      sha256 "58efdaa63dffc7bd93b109996b8502d38aeac80d1d68ddedec35698a31e4827e"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
