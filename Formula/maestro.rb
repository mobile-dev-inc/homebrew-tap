# Generated with JReleaser 1.0.0 at 2023-07-19T16:02:36.057Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.30.4/maestro.zip"
  version "1.30.4"
  sha256 "79ae743d18a83d70f65de34d509f142713f0594f99673a78a04a69dff21480b5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.30.4", output
  end
end
