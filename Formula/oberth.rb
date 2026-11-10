class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.0/oberth-darwin-amd64"
      sha256 "050d1673516834f56f0e8fd7f5d47734585cebc96b323cb136240161d0097f23"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.0/oberth-darwin-arm64"
      sha256 "814a0409f162ef335a31e35298c9b57386e35afae8dadb1e8a974991988271ea"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.0/oberth-linux-amd64"
      sha256 "122f5ef533471aca16d578ffe6f32dab331bff3badf2057dc30e66bebd019ad8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.0/oberth-linux-arm64"
      sha256 "3c4e44d784ad6d8c4a2450702f59925d6388bb5e280619a74fbe2320b701f6df"
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
