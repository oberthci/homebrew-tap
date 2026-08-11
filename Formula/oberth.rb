class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.84"
  license "Apache-2.0"
  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.84/oberth-darwin-amd64"
      sha256 "fdf74c7355f58f97327a00dd4c23ba13617c0b88bf9cc2ef879b5e4dff9ca54e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.84/oberth-darwin-arm64"
      sha256 "e229e57dc32a97eb5bcb5ea5ba1345668aba764d04f30eae3c1a49b5eb72bc13"
    end
  end
  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.84/oberth-linux-amd64"
      sha256 "e5e13b13f5d3d9a0ee4db2b97a0fbc0ba966f0588047844b8d2a823ac88804f5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.84/oberth-linux-arm64"
      sha256 "d568f941085d6a0a805852683fbfb396c519125ac86f0ba3bb86aa35a5d0c47f"
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
