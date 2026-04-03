class PurplemetCli < Formula
  desc "CLI for Purplemet web application security analysis"
  homepage "https://purplemet.com"
  version "1.0.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
url "https://github.com/purplemet/cli/releases/download/v1.0.5/purplemet-cli-darwin-arm64"
sha256 "633397eed6fccc1dc9217a1b91a98529147cc8f806950e36a34458d1afcc3491"
    else
url "https://github.com/purplemet/cli/releases/download/v1.0.5/purplemet-cli-darwin-amd64"
sha256 "1ec719107bee2c27dd44a0a5ccc99cd22404181a0dec1eade6d4380e8a987fbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
url "https://github.com/purplemet/cli/releases/download/v1.0.5/purplemet-cli-linux-arm64"
sha256 "73da04c338b75b6abf9ef609141f9ef643d1ce7f17e92decf6700d601c3a35aa"
    else
url "https://github.com/purplemet/cli/releases/download/v1.0.5/purplemet-cli-linux-amd64"
sha256 "d65758d90664a79eed9b5b1f3ec57f92e01105a892655cb6ba0cf087581a0100"
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
