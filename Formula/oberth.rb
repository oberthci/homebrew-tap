class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.84"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.84/oberth-darwin-amd64"
      sha256 "55650be7b175df3ed8cf3f1bdbe7c057aedd8574736843e3028be086c8bf3ebd"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.84/oberth-darwin-arm64"
      sha256 "e07c785205322a0fc8ce50eaf81f8bb907608540f948d8b8452f5386866ba1c5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.84/oberth-linux-amd64"
      sha256 "355551dcc7ce2af002fe450d3465cfb8835298f8d0ad7ce724daa637b6a41d07"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.84/oberth-linux-arm64"
      sha256 "1de8b7d3329f731b1024f946fa5a8483a8692d97e7e5f1bf99169e4fa0254f62"
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
