class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.13"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.13/oberth-darwin-amd64"
      sha256 "0065dafd420ab4e7db0d30da8c7b41be3cb7f36f62299ea1ac2536743452c870"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.13/oberth-darwin-arm64"
      sha256 "dec532a44d3e589a2eceb8d4fe94d8e988ee9d2e281550596b99c6d58b623c9a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.13/oberth-linux-amd64"
      sha256 "cfac913dbf12881961b8491f56cbb6831629c2e74b8889c645f1d7bfeceffd4c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.13/oberth-linux-arm64"
      sha256 "7d750640620809862b1122ed9b057012bdbdf6c721ebe6d4da0650ac4fba7522"
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
