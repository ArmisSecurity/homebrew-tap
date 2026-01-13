class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.3/armis-cli-darwin-amd64.tar.gz"
      sha256 "f97fa2a914e687427ea32f5af2b9c428ef0f3cdbdd2e77475f69b1079931b5d4"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.3/armis-cli-darwin-arm64.tar.gz"
      sha256 "831c73a3b3cd269bb183280e9c02fce24ba7bb388aa9a1f7145f4017b9c229f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.3/armis-cli-linux-amd64.tar.gz"
      sha256 "3a1b578f66acdba3e094ac025ca2c290227d98c4fb9016df7aade5f0c19b8010"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.0.3/armis-cli-linux-arm64.tar.gz"
      sha256 "47fc56bc311c0ff0eb30b731b757e1002351d8d9cf859603caa71a2136aecfc3"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
