class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.34"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.34/oberth-darwin-amd64"
      sha256 "e24bba4ba9321b42fc68a330040b79d37a0dcb385c62732b02bda601eef2a877"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.34/oberth-darwin-arm64"
      sha256 "456737b7540b9c4fa2f3a5bf05231cc03581a91adccd898659803992a6f3284f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.34/oberth-linux-amd64"
      sha256 "dce65fad318b3e0d6120402107e39c0666b28e8d84edb0824aa1b831881d3e9b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.34/oberth-linux-arm64"
      sha256 "96b6b6de4f281d542358274a319be6d8eff726b92e944e9682a4e0a92675390e"
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
