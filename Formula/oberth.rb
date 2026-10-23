class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.49"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.49/oberth-darwin-amd64"
      sha256 "f2e551163127cbede2e263da0ab2b0bc4716022c68b3bc9afdcf072345be1121"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.49/oberth-darwin-arm64"
      sha256 "52896d9a080ec52c51b4bdc29a7b39e1f5897377b301dd148203ebe98ece1b57"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.49/oberth-linux-amd64"
      sha256 "52d7a9e1f9c568e80adbb26ee4a980a559585dbb5290320c6dd8882316c0a6bd"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.49/oberth-linux-arm64"
      sha256 "f2f37da072212969b85141e851d362170d2e0327fa4113a13d54c1ec505a922b"
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
