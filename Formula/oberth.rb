class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.44"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.44/oberth-darwin-amd64"
      sha256 "945798f6b5e7025b802539c6bf8da39227b96717d4cbe1cb273f3078503b2e30"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.44/oberth-darwin-arm64"
      sha256 "d7e19baebf64016fa9bc4f1a43bf1856960ddffb123a579cfc54874ab2536e9a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.44/oberth-linux-amd64"
      sha256 "37bc4822af6407b540b54d08abd8acb99043b926c86655b257dd1a3a61b17c94"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.44/oberth-linux-arm64"
      sha256 "a1ae2facea37d1cf94a888e5c0023865129645f87b2b2c4977718d162c795061"
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
