class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.96"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.96/oberth-darwin-amd64"
      sha256 "71f8eeed1ac2f9aac9f503a3b1840377a58f3d0965427785f0fb482e02b9f337"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.96/oberth-darwin-arm64"
      sha256 "07780f05f043c6aa2e19454ddd6529c158b2d15a5504201c8dda3d4281825d01"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.96/oberth-linux-amd64"
      sha256 "3d31459659701505c86063764ccad9428b84c9709e92f5545a73150009e0fe08"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.96/oberth-linux-arm64"
      sha256 "6c57adeabcc499fd9900eba8dca0d904024c0d426903027d40906290922576eb"
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
