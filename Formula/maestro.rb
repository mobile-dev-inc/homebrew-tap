# Generated with JReleaser 1.0.0 at 2022-09-13T11:10:15.933771Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.6.0/maestro-1.6.0.zip"
  version "1.6.0"
  sha256 "af4324d7691fb8b76923dba394e2db33df988a06afded70c2bef02f39a39b9d5"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.6.0", output
  end
end
