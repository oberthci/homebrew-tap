class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.9"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.9/oberth-darwin-amd64"
      sha256 "190fcf0eabb53add2d94d3298d53fdf1f2b7f3f93e252126ab3b3ea518306075"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.9/oberth-darwin-arm64"
      sha256 "fbc997715492de49251a9c7dd0de7b81ada1343aecbed0bddf6506bf91af389c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.9/oberth-linux-amd64"
      sha256 "2ba2c2798b08bdb09be2b7e999eb9edcd57c1330b312c6660d956ea639ef900e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.9/oberth-linux-arm64"
      sha256 "fe10ccb0141b187ee5076bb91e28de2f9921e9244dd5da3f99dcc443f7a2fcba"
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
