class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.5/oberth-darwin-amd64"
      sha256 "e344629be0d43ffc36e61f7590a443e24ece0e0b8612f03fb19f7d1833b46a61"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.5/oberth-darwin-arm64"
      sha256 "d0a189ca6f096741c813f3c5d5b657c10c33627baf8e659f4c2c96a5519b7ab0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.5/oberth-linux-amd64"
      sha256 "dc3249faea1178068697e5218cc50564c6e653c4ae6d604da40490961fd1c6fc"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.5/oberth-linux-arm64"
      sha256 "29a6a69ba750d4bd68c462423f6e6731d08dbeada66ec4b44bc4ddb2785e064c"
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
