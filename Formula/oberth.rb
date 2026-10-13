class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.15"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.15/oberth-darwin-amd64"
      sha256 "e5986bbf01b677329a6a281c14596c4edbdb5c0815ede7058dad66d2d06ae334"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.15/oberth-darwin-arm64"
      sha256 "42bbde96b8be1b2d730551e3f0f21517e03383747f3ad0ac66fa320230081890"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.15/oberth-linux-amd64"
      sha256 "5effbd033fe4480156048d8ffedac6b8ee513b67b357bc857793a5c7d35f7aed"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.15/oberth-linux-arm64"
      sha256 "671880f70d912f722c00ac5c378fe4bce9ba361a32c1b3e1b0066e49862be5cf"
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
