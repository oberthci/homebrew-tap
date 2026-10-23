class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.48"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.48/oberth-darwin-amd64"
      sha256 "e3a2129602a7ca108d479bf34ae9546a1a532e9f20b4632b3a6658e9752cb10b"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.48/oberth-darwin-arm64"
      sha256 "738963c09c7f86f1f3a7c8712ebc40f5763b0ad14af307345171a78ea576f0a3"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.48/oberth-linux-amd64"
      sha256 "6ea2c57e6b66127952df61a5c7ff4fb1fa99d75b0da5ea35dc5dce0fa9f157ae"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.48/oberth-linux-arm64"
      sha256 "212fc4b40cef0335fcef698957a0505e6c6de68a7a822e0fe225f2678a3d55a8"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "oberth"
  end

  test do
    system bin/"oberth", "version"
  end
end
