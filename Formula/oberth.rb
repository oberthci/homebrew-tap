class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.30"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.30/oberth-darwin-amd64"
      sha256 "ca9b500adc5f63e77af951a2108b54ffea4be6bed9d0206493e2cca315e8eeb2"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.30/oberth-darwin-arm64"
      sha256 "0c50e923eed9cbfb128e2a0cc245a3dc4e7cd2d611cd6a9bdc46628fda9b9e1f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.30/oberth-linux-amd64"
      sha256 "c853f12c22120d45b574f98abc9ee04c981c12638720826af29120815d199646"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.30/oberth-linux-arm64"
      sha256 "704f9686627d0dffbb73205a51f351cb2005e56c3aeda081c8dfcebd33d441c1"
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
