class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.23.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.6/oberth-darwin-amd64"
      sha256 "fd67c3c406464b5cc8bd19fd392d7b272469a8d80bda4e5b10d4d692f2b1da12"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.6/oberth-darwin-arm64"
      sha256 "009fe6cdd550cf21521d20fd5b93936b64a1d8fa8759e2e62d12e604090ebe20"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.6/oberth-linux-amd64"
      sha256 "7aae5a32dbef51f29a834b10c99b05a93492ac85f82d5aef443bbb604524e525"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.6/oberth-linux-arm64"
      sha256 "b61524ca305c11be0708b5cef8e6d898269c31249c332095416251bccf9509ec"
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
