class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.23.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.5/oberth-darwin-amd64"
      sha256 "b1db056e817d9c2a7ea5841ca8e461f65c77c9b4f78ee5fd239a7d9d3d0a9cac"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.5/oberth-darwin-arm64"
      sha256 "03bec7bb1d39a396092a43f5976cf7583d7fc762ba0579107843511f6bb0cb0d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.5/oberth-linux-amd64"
      sha256 "d3902f8d7c7952ab6490f86ad1d02d3c48b275b50a8e654be3413f9d12a5e6f9"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.5/oberth-linux-arm64"
      sha256 "a497e15daa639bdc12b4bf1c6fc8353a58d96b689dcd510ebaeda39ce186e5fe"
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
