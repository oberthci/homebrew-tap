class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.29"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.29/oberth-darwin-amd64"
      sha256 "2d64fdf34d4913fa5843bc9a301d34e15db9d1057a316ddaf43b5354b234b183"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.29/oberth-darwin-arm64"
      sha256 "a0357035945946d5b9e2dce1e89c49f3d42a357c3a0815b1e78da5bfde58c26f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.29/oberth-linux-amd64"
      sha256 "d3e448e5343347574a2759d45bb8a9d440282e0e21608b15ed198b5c08a1f475"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.29/oberth-linux-arm64"
      sha256 "73de8635f45683f348dc1765830c39d25477ca3a200edf7ec499f2dd3fb9e360"
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
