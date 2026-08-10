class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.67"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.67/oberth-darwin-arm64"
      sha256 "051ee900bc46c769f655a90d849e4bdd5710e512321288d8877ce8546c2c9385"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.67/oberth-linux-amd64"
      sha256 "d9b8ef8d63c57868e6a1fa2fe07f75e7c931bc43ed059729fc7c88df3dc546d4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.67/oberth-linux-arm64"
      sha256 "08b7b46a9c8c170ef4d8ec2d4d155da888f2075ab1258ed53482ece21e439818"
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
