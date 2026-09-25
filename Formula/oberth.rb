class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.4/oberth-darwin-amd64"
      sha256 "0462e5bb31e185ef38e2f8d7e6c7719329ef923dc32a911d706f1daa59063940"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.4/oberth-darwin-arm64"
      sha256 "c33575cd373f37c8e132d98730c441d15410493518a32f83232968a2d87f6472"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.4/oberth-linux-amd64"
      sha256 "73953c47fa5d3e2235a9b27e07bd45330c5073e97f8a4aed356e3427625f7ef2"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.4/oberth-linux-arm64"
      sha256 "737654105d53dd30f5ac537a4e4d676a3d3f77c62922721a7fc3edf39c5d5852"
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
