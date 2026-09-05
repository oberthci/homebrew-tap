class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.32"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.32/oberth-darwin-amd64"
      sha256 "fbacb2d8373437ab80fc919ba5308b8fb151429bd1147f76cc8c34b594a7c21b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.32/oberth-darwin-arm64"
      sha256 "0a65fcbd83712f54167f5cf5ae67fd3a13a4dc4adfb571b88c529f8fa861509e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.32/oberth-linux-amd64"
      sha256 "3f0478bf929d16354cd458095f6203a3c5e1ee9c58bdfb2427e7f9e0965ce776"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.32/oberth-linux-arm64"
      sha256 "6a81e4cca1321ff8ed6c7c03179b9b5a9406911eb9d1c434b75524f32baa898d"
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
