# Generated with JReleaser 1.0.0 at 2022-11-17T13:21:32.286Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.15.0/maestro.zip"
  version "1.15.0"
  sha256 "55d42f1bdcfce148005fa3e0dda9668505a51340dfd486f53ca23977032269e7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.15.0", output
  end
end
