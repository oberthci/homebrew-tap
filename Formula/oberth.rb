class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.63"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.63/oberth-darwin-arm64"
      sha256 "caa58f909e060495ab6eb0f48a60e689fde1d4428d76d51a37eed4cc3bcdddbc"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.63/oberth-linux-amd64"
      sha256 "b66938afad3a6a749671e4adcf0894b3ec0ae449db50d5afab6362c2e84e2cbd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.63/oberth-linux-arm64"
      sha256 "54ca8ed289f2b18f8f888028b5fe28d871f56de0bb480eb2e831c166a362d3d1"
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
