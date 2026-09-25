class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.5/oberth-darwin-amd64"
      sha256 "dae522c033b976339d05b9032b08497c4966a07bb6ddf5d3d27eb7fea9b6a242"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.5/oberth-darwin-arm64"
      sha256 "6450ec7e2dd881843aa3870a77baf557d99248415b9fbfd3e5c2c958b4c06d39"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.5/oberth-linux-amd64"
      sha256 "e5ca047885ab209a3a1915312497d6803bf2699e3e0796a10e09056e3c52b352"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.5/oberth-linux-arm64"
      sha256 "45fe76d5597068ea7c06ed71e3871bd608392e3d0a78eb8a03ec43de313fe6d0"
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
