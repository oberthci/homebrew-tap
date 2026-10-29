class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.64"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.64/oberth-darwin-amd64"
      sha256 "dd1f28f7307762fa7bca75c3dbce88cc1504212db679ab11ea0aae6d874e59d9"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.64/oberth-darwin-arm64"
      sha256 "94169f508768197f7a01d1fb7b5324aa43ba88d9aec08c6c63cd5a90328810c5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.64/oberth-linux-amd64"
      sha256 "529f371fa2de9b75422fdc811f18ab3f1dc26af2458a717a13484ea9e1b4a396"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.64/oberth-linux-arm64"
      sha256 "d25e858f8302e34b6bc69a396d84d7c0f0360df35b27290aab6109c7c3a9cd0b"
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
