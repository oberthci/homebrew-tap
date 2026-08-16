class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.21"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.21/oberth-darwin-amd64"
      sha256 "d8df9c85c8d33b1cd3b9426f31b9bdb8c1f725014139dc2fbf2320cdaf8757b9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.21/oberth-darwin-arm64"
      sha256 "aaab31ea0ad037eb9f7c630a83b2a5001b9e25052076e3b47248661aeb11c8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.21/oberth-linux-amd64"
      sha256 "745bd375ead49d10e98a31ec330948aef0df62af89cf6808f572b0c262014ae4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.21/oberth-linux-arm64"
      sha256 "3ee4664c5498a5d23c66e002266cc0b56b85f48cacb4a334d5cd9e8ebe44b6c8"
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
