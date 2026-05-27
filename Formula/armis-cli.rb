class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.0/armis-cli-darwin-amd64.tar.gz"
      sha256 "f3ae6fb54fb4f2532ef8656e2624aae3419c54efaa2cab10b820f26b45b4da92"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.0/armis-cli-darwin-arm64.tar.gz"
      sha256 "ebf6fff55cdce53ad695c84cb3c7dfa2b40acd86b3ba2fc6ce793849ba28169b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.0/armis-cli-linux-amd64.tar.gz"
      sha256 "e73aea83f6b8bccb200df81ffd276abe0b07d83de8304287481552b94b1ddeac"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.0/armis-cli-linux-arm64.tar.gz"
      sha256 "2424dd960a757eee9a06507c7d6729b5b626689f27c3d23a4c450c24b884230e"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
