class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.7/oberth-darwin-amd64"
      sha256 "09701e72f78be4776718e5f2920bb7a32b938169dc9307bf02fb89247861b769"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.7/oberth-darwin-arm64"
      sha256 "5a3a5c8b17f8e8b072dcff96adb3c9ec04acf4e133717de7941f4cfe2eeed4c7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.7/oberth-linux-amd64"
      sha256 "6f51283e152d611c0ba58ff6f3c72aea83b865f25f31750eda1f569fcb23bd3d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.7/oberth-linux-arm64"
      sha256 "ca0ccb8007b1e04d00f2ebc983fee0fe1b7e3ab9791975e24824aa5f819f756f"
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
