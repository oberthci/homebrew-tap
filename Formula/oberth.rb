class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.67"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.67/oberth-darwin-amd64"
      sha256 "5417aae8db6eebfe0e9109dfc143163b13b7d1778b9aa6ec26b4ee7cd29b83b8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.67/oberth-darwin-arm64"
      sha256 "776adaa77f4a99eaae02770af7a3b61604d36d18748a2894e2025d84ad936820"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.67/oberth-linux-amd64"
      sha256 "11f36ae834a6a34f3ef66c5990fff7c6b4aff4906d2f85981e5285ae5ba8a530"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.67/oberth-linux-arm64"
      sha256 "1e46661838c0979e8a5102fc9553f4bcd0fd00de0371c5864c5650f7802af3f2"
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
