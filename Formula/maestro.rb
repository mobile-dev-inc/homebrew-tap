# Generated with JReleaser 1.0.0 at 2022-12-02T14:13:05.899Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.16.3/maestro.zip"
  version "1.16.3"
  sha256 "8f4508f4ad5feca42ed07ea2b9694b7498e78bd3438ee4e7fcb148678d36de85"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.16.3", output
  end
end
