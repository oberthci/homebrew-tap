class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.24"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.24/oberth-darwin-amd64"
      sha256 "db6ebb32ca35cf029945c601a495066bfc6bcff042f6598e921e3983bd6e2783"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.24/oberth-darwin-arm64"
      sha256 "ee614ef05a635996d2304d2fd85bb3c9857036376c88a5fdc064f71d1e62497d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.24/oberth-linux-amd64"
      sha256 "6f657e65a288d929b9223d4a182b1ef316279b9b31e66934bdce51306d27faa4"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.24/oberth-linux-arm64"
      sha256 "19b7894625323d46d1ea9924fd2cd750f5f0e44fb29a957a8553a0c8d5c96a0a"
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
