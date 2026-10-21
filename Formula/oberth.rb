class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.43"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.43/oberth-darwin-amd64"
      sha256 "6be860617ea25c130afffc3dbbd2a98ed5a4db42a2544fbf2dfa6943e9528f7a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.43/oberth-darwin-arm64"
      sha256 "9aea403c549e32d313091de7c310ff90460d954e4b272127a5631ee88d624f5a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.43/oberth-linux-amd64"
      sha256 "a65c12011d275336e1dc54338d44e3e9a24c25dd1e971018ef2294c79e96764f"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.43/oberth-linux-arm64"
      sha256 "7ff414b23d883c5d3d4da7f9bf1a56fc0ab426002ea0ff86227e2053809c05de"
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
