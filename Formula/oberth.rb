class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.35"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.35/oberth-darwin-amd64"
      sha256 "fb65c9150a74e70e43320c27687918d8d4804fd260c4f895d9e381eed0166112"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.35/oberth-darwin-arm64"
      sha256 "37fe760d6ef74af7b12031cd1ef5464ab730598761b7bf03d929610d96f0033b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.35/oberth-linux-amd64"
      sha256 "f08c797803bf7fb6efa6d7be386914cb5fb9c5ff05a03fd6bc4d1212498e91ac"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.35/oberth-linux-arm64"
      sha256 "853dbf3529adef09d6395e971c23d56c3183fde8a4218ba86a22a36840bd44a5"
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
