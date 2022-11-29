# Generated with JReleaser 1.0.0 at 2022-11-29T11:02:14.243Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.16.0/maestro.zip"
  version "1.16.0"
  sha256 "4062a2ba56612943db89e042349b91b7296fce7e6d1888e7982f821e368f8e89"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.16.0", output
  end
end
