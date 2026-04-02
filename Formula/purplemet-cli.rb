class PurplemetCli < Formula
  desc "CLI for Purplemet web application security analysis"
  homepage "https://purplemet.com"
  version "1.0.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
url "https://github.com/purplemet/cli/releases/download/v1.0.4/purplemet-cli-darwin-arm64"
sha256 "56882a25e243403ebcb998aa575225d3a2ab4cea19f4f7a13b0ddf8e3deb6210"
    else
url "https://github.com/purplemet/cli/releases/download/v1.0.4/purplemet-cli-darwin-amd64"
sha256 "670ddfa3f1cf338a998373555f393cc782b512921fa23a37f19bd9a3f194c9f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
url "https://github.com/purplemet/cli/releases/download/v1.0.4/purplemet-cli-linux-arm64"
sha256 "cc9a5c7a451480124f9b7cd67bf323d7708483ae586b1bdbd3bf126209adc686"
    else
url "https://github.com/purplemet/cli/releases/download/v1.0.4/purplemet-cli-linux-amd64"
sha256 "bb738fcbf0934c6a0d2785e27d35eef5cc08ed01708c5296cbc4226fdc72cfa5"
    end
  end

  def install
    binary = Dir["purplemet-cli-*"].first || "purplemet-cli"
    bin.install binary => "purplemet-cli"
  end

  test do
    assert_match "purplemet-cli", shell_output("#{bin}/purplemet-cli version")
  end
end
