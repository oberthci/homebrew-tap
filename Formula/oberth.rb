class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.81"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.81/oberth-darwin-amd64"
      sha256 "44c8054dffae908bdc05b278445bb440acef1abc7100528effed896decad4fed"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.81/oberth-darwin-arm64"
      sha256 "ca8690214de14d6eab4af5792276b6164605bdbbaf73567906001a1e51a8f9ca"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.81/oberth-linux-amd64"
      sha256 "03ad12efff04374202b471f72b9ee277b554439ff1c87067df4e862f6e032444"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.81/oberth-linux-arm64"
      sha256 "2d9f91dccb450322946f4bf817e3afa179f4ce8e63c69a13bd44632da688beff"
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
