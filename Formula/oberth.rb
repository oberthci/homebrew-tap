class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.27"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.27/oberth-darwin-amd64"
      sha256 "88858b89e9a6fe69d3f25bc7ca507f101d8c61330212d0e56ec770f451f89af5"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.27/oberth-darwin-arm64"
      sha256 "c5435cabd2e7f5666407645fed68926bd26c1cb5649854d94804283224727c02"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.27/oberth-linux-amd64"
      sha256 "7cf0bf3619dc32f5f276bde6d62ef988e7ea8debbbb4b59bffbb15ff1407082a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.27/oberth-linux-arm64"
      sha256 "9810d607b337b907166060a619fab3cc46b7f355d68fc6b5fdd9832e1522cfc1"
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
