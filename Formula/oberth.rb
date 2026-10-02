class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.5/oberth-darwin-amd64"
      sha256 "45ff61e85fb5d954ee6942a59e5f883104fdecdfc4b8ccbdfc9f38fb4610a72d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.5/oberth-darwin-arm64"
      sha256 "bbc3077591f9f8999161d0d5edf84303f49566a5f983d98c86393643aa0b52eb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.5/oberth-linux-amd64"
      sha256 "9be0ba421491a8c767ba559709791ef521d0ecff9739e039cb19bcc483314c4f"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.5/oberth-linux-arm64"
      sha256 "fe3ce251a38c6ca141fe1f2b9eb4c947cffa508bfd90749b02448e5925c6f2dd"
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
