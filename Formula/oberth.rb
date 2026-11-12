class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.10/oberth-darwin-amd64"
      sha256 "9ced8fc20e1e7c3c54ba3cf11602151c7e814ac1409340cb02da6bbf31af8c68"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.10/oberth-darwin-arm64"
      sha256 "5b1b920e8ff13ea3fbf880d35d0faaaaaaf8f81742504754635555bd69f641fa"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.10/oberth-linux-amd64"
      sha256 "379dd3dcb6b5549a18960738e8d25f1343e7c5867ba7a5082e80e57933ec52b4"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.10/oberth-linux-arm64"
      sha256 "f5ae6b77d84f2dc05accae5b0e942c0a8c1b5ebd2d8c0fbbe3120faab4547ee6"
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
