class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.14.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.1/oberth-darwin-amd64"
      sha256 "bc861b72f1e6b8bd356d9208784add6f8dc957d36e4a12f92c354a11b1ff9ce1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.1/oberth-darwin-arm64"
      sha256 "30d7a3bb88c503deebf04cf2e801c5930b824379d586d3af781b9d082a45b9bf"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.1/oberth-linux-amd64"
      sha256 "e0aaf19f03f9b6f13dcc5ed3feca54c07f897b28e2dc4a8ea30a8291f569a923"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.1/oberth-linux-arm64"
      sha256 "2bfa336f81941dc9abdb500a0bb8b7424c918932397211276d6afe3daf7c159e"
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
