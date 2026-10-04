class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.9"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.9/oberth-darwin-amd64"
      sha256 "e10d422e9d98fe4fc13d685225d3d03dbdae81f9a46a1c6789290177487de621"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.9/oberth-darwin-arm64"
      sha256 "995bdf9d80683b254c0e7993494d17a261f5f96ff89f58a726f247ebf65ab381"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.9/oberth-linux-amd64"
      sha256 "dfefc9b1d1107b97397de57cf0d54fddf1923306665be9374432057b60e7e838"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.9/oberth-linux-arm64"
      sha256 "0aa771fab70070a9531a66b82e4d20d16dab058625d16129dcdf1e83f4f12276"
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
