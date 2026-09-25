class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.0/oberth-darwin-amd64"
      sha256 "38f17766d2805321cc075346f956918001cbbdd3bcdf998f14d6982e8bc1a3a9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.0/oberth-darwin-arm64"
      sha256 "0609a6d852b3efa6b0ae11c566748172774734b750c413dcc5a6531d943076bb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.0/oberth-linux-amd64"
      sha256 "cb3d4055257e5eb5a85e524f662a2a6020c285aeac5472b3437af1439d75fb0a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.0/oberth-linux-arm64"
      sha256 "d38ce4f6ddf74679a83d2ef551f58dbd42726bad698227dff816d740762a70b8"
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
