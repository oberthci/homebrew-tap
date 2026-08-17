class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.29"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.29/oberth-darwin-amd64"
      sha256 "23b22f2d2523d17b0c107b979c48d685f7115f6baa16b5d1cb5c93ca5b08e8e5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.29/oberth-darwin-arm64"
      sha256 "bfcbd2f2f6ee3700bd210d14de34392c4b5e6a334bb4f4628cf9c8210e8ce762"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.29/oberth-linux-amd64"
      sha256 "6eb7be595f5f6dd08d7e7f42bc8d4ea2d33066e2ff841ac814378fffb746311e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.29/oberth-linux-arm64"
      sha256 "25ee6967b13b40f04e36b69125cf8a10bfc90f51d55389c71b021910db03fc20"
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
