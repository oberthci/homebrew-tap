class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.53"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.53/oberth-darwin-amd64"
      sha256 "09cf7de2bb3665db40a8e8c1ff7eb718832ab87ffd43a1e16de1b33e454f7574"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.53/oberth-darwin-arm64"
      sha256 "3eb5ebc73443b104e96b80f3019d256f48caa1cd51d6e92f4b29681a74705691"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.53/oberth-linux-amd64"
      sha256 "b521e5f9ece08e14aac5ead6815c94ca9962128cf33a5ba3af546c6850510572"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.53/oberth-linux-arm64"
      sha256 "b95cbe7c9807cf0c30d6b40ff5af823d138dc8ed886e3b36c5cbd2321f3eab9b"
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
