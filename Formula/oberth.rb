class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.93"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.93/oberth-darwin-amd64"
      sha256 "cb32609b49e594168c3de422be732387d0c4635ee148bee3552a9924cefdcc08"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.93/oberth-darwin-arm64"
      sha256 "91be4e55111d4a58c97a940bcf6d54c8fd48729a8884e7a520891a5d56b9a683"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.93/oberth-linux-amd64"
      sha256 "95748ea1047270729040b916092827a55bff54ee5b45acef36c847d293ed8711"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.93/oberth-linux-arm64"
      sha256 "46b5b9e6b204211949ca85df2deecae62965e907eb276e62afa031b53331f5ea"
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
