class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.31"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.31/oberth-darwin-amd64"
      sha256 "09eeff2dea5801596ff0058febc310a884e744e6fbd467650d0f70354471fbbc"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.31/oberth-darwin-arm64"
      sha256 "8aa186b8065c9166f739f7de3553b715aa8d335445315e0ef72292b06b101a88"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.31/oberth-linux-amd64"
      sha256 "86dfb34b0db626993bd28fdec371031ba34ddc47750fbb38a19c61f12085364d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.31/oberth-linux-arm64"
      sha256 "fc5a8c5c00de7950174579e56cf642f55fa7134cb62678ea84bf287e279325bc"
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
