class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.20.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.0/oberth-darwin-amd64"
      sha256 "55cb5384657a0f52b78415590cd3cddfa8fa2d7c88d9e09f066df472c9c58540"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.0/oberth-darwin-arm64"
      sha256 "fde8308884453a6794a42c2c95865592b1a6f4fb2e89d81d6928823e872ef90a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.0/oberth-linux-amd64"
      sha256 "4c8a7d070912091d970d5062b37e5afe1b9335bf7a1c8049b9519626d193f6af"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.0/oberth-linux-arm64"
      sha256 "8789117e82c8a12d952dcb619fa9ae0cbe8c6485668660f540079fc5f8e30633"
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
