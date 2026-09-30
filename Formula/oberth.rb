class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.21"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.21/oberth-darwin-amd64"
      sha256 "5eb3448b04b027b2c4e236d4f2acf62924ea7df2167f086f031ea5b69e855938"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.21/oberth-darwin-arm64"
      sha256 "6d3f4ba83785d8a26fc272bdb7f0aa61bc0812b6bad4d1892fbe89d066c510c0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.21/oberth-linux-amd64"
      sha256 "0f8a6f05671b798b61d9d1b7737c3543e4bfe21499afb349a968a8eedff08b52"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.21/oberth-linux-arm64"
      sha256 "5243a34241a228b54a7247decafaffbee68d8d2454aa308bb1a63294eb4d9507"
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
