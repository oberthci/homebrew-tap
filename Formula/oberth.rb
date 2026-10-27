class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.57"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.57/oberth-darwin-amd64"
      sha256 "81f364dd1b5035d19735b2469ab11415eee0f48ad8e18bac5ad92b23b4861b1e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.57/oberth-darwin-arm64"
      sha256 "1f6beafc3f9055cb272507c99281490d594b98ed54acfaf71c723ea6f40e2dbb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.57/oberth-linux-amd64"
      sha256 "fa71709caac186aedfb7b48356e2ccdc5a8827068b7198d81e63f4f2aaaf704d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.57/oberth-linux-arm64"
      sha256 "6c9903ba8c55a4ddb6192b529ba6847c82cf5aa25227354232af9ce2c33463aa"
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
