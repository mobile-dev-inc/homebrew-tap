# Generated with JReleaser 1.0.0 at 2022-10-28T13:54:48.351806Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.11.3/maestro-1.11.3.zip"
  version "1.11.3"
  sha256 "a492211831d970198c6c285e67b536c0c3989049fb5888c1456686662ecf5a42"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.11.3", output
  end
end
