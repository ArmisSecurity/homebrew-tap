class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.12.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "bda657f231a4e12a482378c55422785aeeb872bccba4f0982559e107113a40b5"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.12.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "76422805efc25d8518ce3a3589fefc2ec4c872f2023a4c077cc4313eee433a56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.12.0/armis-cli-linux-amd64.tar.gz"
      sha256 "faa53962e6664c0545630660a09938bc49a7731265e2867e7ef04e6e0488869b"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.12.0/armis-cli-linux-arm64.tar.gz"
      sha256 "f2551999c54e23517b90143eb448b045bd2fa7509253cb95119fa5a8eedad5c8"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
