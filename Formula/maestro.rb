# Generated with JReleaser 1.0.0 at 2022-12-13T13:24:14.27Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.17.2/maestro.zip"
  version "1.17.2"
  sha256 "7ba8cec2ed463c164dccfc4c8e96416888cdac5ea7683233162125fa8c10c0d1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.17.2", output
  end
end
