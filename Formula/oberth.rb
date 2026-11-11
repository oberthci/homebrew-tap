class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.2/oberth-darwin-amd64"
      sha256 "ee6121d3093b310b0e320c78a810b03f3699e7014494cc11edf37c2281e244db"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.2/oberth-darwin-arm64"
      sha256 "80fa207072f389f733dcc5d8126a3ae5d5d6fd2cff02a1ba13967c9897d0bd32"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.2/oberth-linux-amd64"
      sha256 "e84e69b64373eddd54b182b4729ca4526cb6cbcbe43017fee465e8f9e7479b6e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.2/oberth-linux-arm64"
      sha256 "f09cb11ab66a361d0f65e658128028a1a125fa3387b461a8f7ffc9117b7ea128"
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
