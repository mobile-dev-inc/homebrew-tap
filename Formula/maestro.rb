# Generated with JReleaser 1.0.0 at 2024-07-29T11:52:20.756Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.37.2/maestro.zip"
  version "1.37.2"
  sha256 "730e6940b9d48ff040ddaf3d50279bd7a358b406ef8a50f68d63af43d6117134"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.2", output
  end
end
