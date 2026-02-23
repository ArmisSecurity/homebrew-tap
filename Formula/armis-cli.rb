class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "0a44ad8d5f71ba8974dbf4ea8e87f15aa69b638eea40ef5b6aadccd3a009207f"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "ffcaace79d5604685752b8b7f3edeac2bbd83498417d62e49250a7d7ae99ca50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.0/armis-cli-linux-amd64.tar.gz"
      sha256 "5e9faf16c53cabc94cc24dbcc9ca45b0cf6bc428a64c3a55234f57a718804a3e"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.2.0/armis-cli-linux-arm64.tar.gz"
      sha256 "164fa798a0ef9cb6f19e39c118fcff3c216d917b3375388e8349c917511bada6"
    end
  end

  def install
    bin.install "armis-cli"
    generate_completions_from_executable(bin/"armis-cli", "completion")
  end

  test do
    assert_match "armis-cli version", shell_output("#{bin}/armis-cli --version")
  end
end
