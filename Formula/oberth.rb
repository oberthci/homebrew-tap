class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.25"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.25/oberth-darwin-amd64"
      sha256 "70332cc35f47a8a698dc731efdfd74dc0174978c120476ed9c8d69a6c41e8309"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.25/oberth-darwin-arm64"
      sha256 "b34ca0d95315e1885ae61b137a9276524e4430c9701d8a4a171e651a3d9857f2"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.25/oberth-linux-amd64"
      sha256 "9ee01ea507b630034af875a5ade8ed5dbb59c4433a6097c7b59ce0e4188de75a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.25/oberth-linux-arm64"
      sha256 "beef0bbcd1ba7cb9c00a9afd981206c007dc6a83e874176eb8a73948a6b7105a"
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
