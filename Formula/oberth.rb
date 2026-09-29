class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.17"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.17/oberth-darwin-amd64"
      sha256 "08296d4706bdc877e5f24b9e7ff5586226d73d15cf5cda5340ed792f372a79ea"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.17/oberth-darwin-arm64"
      sha256 "e24f90e86e158b39fc3c1b067a9eac04b0008849102f69b0036068e2b0c899a4"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.17/oberth-linux-amd64"
      sha256 "623abad41be33cd9d8c274a16d81261a9d919d18c1fe03ba1a2cde0bc6a3a0a5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.17/oberth-linux-arm64"
      sha256 "27de0f9f742a67cbcbc8793c58d3bf99c4b35d3bceb787b30fa02a9a5130eecc"
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
