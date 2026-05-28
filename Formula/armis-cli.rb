class ArmisCli < Formula
  desc "Enterprise-grade CLI tool for static application security scanning"
  homepage "https://github.com/ArmisSecurity/armis-cli"
  version "1.10.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.2/armis-cli-darwin-amd64.tar.gz"
      sha256 "31c746db67b13572b8e50a851ae768c978494491c7b8ad27a6efc705e4589b9b"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.2/armis-cli-darwin-arm64.tar.gz"
      sha256 "347b49107aa1211616ffeec0ce6df3a66f99d654e83bb50e9762016f560a079f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.2/armis-cli-linux-amd64.tar.gz"
      sha256 "816b49a2866270a5fe6f3c05528781baa64771247fed482fbf11eb5897b20620"
    end

    on_arm do
      url "https://github.com/ArmisSecurity/armis-cli/releases/download/v1.10.2/armis-cli-linux-arm64.tar.gz"
      sha256 "544983798278bdad5978f4b6cc1bbdbc08c30b8134c8ca9a0ae1c86375b4a723"
    end
  end

  def install
    bin.install "armis-cli"
  end

  test do
    system bin/"armis-cli", "version"
  end
end
