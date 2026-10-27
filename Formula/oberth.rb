class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.59"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.59/oberth-darwin-amd64"
      sha256 "ed125aed0fbbad3345afee27dc61f1b983969442424e102213357b0d58e3cd5c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.59/oberth-darwin-arm64"
      sha256 "277db2c021f0e878ebeab7f0c6ecb7338de13340fc08a18edd3af6890ed66769"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.59/oberth-linux-amd64"
      sha256 "8663e981a07fc3aa6dc41297c1eeff7772e35f69770f1848e2c683561983f893"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.59/oberth-linux-arm64"
      sha256 "2b5084dd8d6d49c83194c8970f24a51fa8400c158b3cd8e114f17f515c53c20e"
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
