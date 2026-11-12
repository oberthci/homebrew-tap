class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.7/oberth-darwin-amd64"
      sha256 "522341eff56ca35a82bee483f9464a50caa8e978b4cc82a0e15c1cae14f2b7d1"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.7/oberth-darwin-arm64"
      sha256 "1a30fcd2025021f2036ee2e5c9f8620c5b060901c45134219298b2c7c4787b5c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.7/oberth-linux-amd64"
      sha256 "8ae30c22592856da918ac726eb92f854078716afb134bc0645dc8afaa8629643"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.7/oberth-linux-arm64"
      sha256 "336b608d2115d8ecafe72b6114bfd8c3add574bc04446fe2b3fb1741f2039380"
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
