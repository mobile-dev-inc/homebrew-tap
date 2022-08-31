class Ips2crash < Formula
  desc "ips2crash is a macOS command line too to convert a .ips file to a legacy .crash log file."
  homepage "https://github.com/packagesdev/ips2crash"
  # url "https://github.com/packagesdev/ips2crash" no releases have been made, use --HEAD
  head "https://github.com/packagesdev/ips2crash.git", branch: "master"
  version "0.0.0"
  sha256 "f00d9d42a1fd6c7f704cd28c290f81c4a73ee01c980a1f4bb91b0e86457a76bf"
  license "https://github.com/packagesdev/ips2crash/blob/master/LICENSE.txt"

  depends_on xcode: ["13.4", :build]

  def install
    system "xcodebuild", "build", "-project", "tool_ips2crash/ips2crash.xcodeproj", "CONFIGURATION_BUILD_DIR=./build"

    bin.install "tool_ips2crash/build/ips2crash"
  end
end
