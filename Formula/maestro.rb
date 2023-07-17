# Generated with JReleaser 1.0.0 at 2023-07-17T19:52:43.487Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.30.3/maestro.zip"
  version "1.30.3"
  sha256 "3823e8f83280a7fbba12c32de1dcaf2b8e058ae1fad9adb4dbbd0ce15265f878"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.30.3", output
  end
end
