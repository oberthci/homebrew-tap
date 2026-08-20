class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.11"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.11/oberth-darwin-amd64"
      sha256 "ebaa7485bc0a3f4caad495c714887be41e4716854fa538a0d297fc348b8a3e90"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.11/oberth-darwin-arm64"
      sha256 "b2ca5d5286c9aa1f36346d0efc4e6831530e0129f9fc756ffd039da83a603c5d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.11/oberth-linux-amd64"
      sha256 "6a697de323b858f9c0b7738ba9add4ce4bb59bd242d0049625e1ba5e919cacc3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.11/oberth-linux-arm64"
      sha256 "04ab2011c04e076a909a5d3906e99491ca19d65afa3a4440e0e1f3fc63c84242"
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
