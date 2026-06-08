class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.11.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "d6aed9541953eb67a83a8e33bc269b5b5df889bafa8d29036bc9379112cf111b"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "66264f990cd771bed79add4bc73d1dd1ff78d5aee69077b8fa7f119e92b0193e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.0/armis-cli-linux-amd64.tar.gz"
      sha256 "43222aebe429c49009a8cb3846b924598efed4c5fbf826ca92364eb328814433"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.11.0/armis-cli-linux-arm64.tar.gz"
      sha256 "47106334d37ee038ad4603a96aac74a2ba3e4c3a8cfcaec48f8ac8d4885ccd80"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
