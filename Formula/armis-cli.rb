class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.6/armis-cli-darwin-amd64.tar.gz"
      sha256 "f6e2515858eaf5effa33b0c3d2735f6ed40a31c6488d50ab20f499ad46133684"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.6/armis-cli-darwin-arm64.tar.gz"
      sha256 "ee33f5965612508dff42022293b7a5c7fc4e410831513b90d9f4bae1ad5e5f2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.6/armis-cli-linux-amd64.tar.gz"
      sha256 "1bfc8a3e09f85932c4eb6268af93f58afa3114fac73cdeaeac0d02ae4a0c73ff"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.6/armis-cli-linux-arm64.tar.gz"
      sha256 "d0046741610714c245f81ad8492d20ee623ca987acf361ff8bd8e87fed2da640"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
