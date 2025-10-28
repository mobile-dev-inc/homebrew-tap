# Generated with JReleaser 1.13.1 at 2025-10-28T10:00:13.022767817Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-2.0.7/maestro.zip"
  version "2.0.7"
  sha256 "fbb66c45d36d79485c42832f54a70121071c959651f462c19aa11be7d078676f"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.0.7", output
  end
end
