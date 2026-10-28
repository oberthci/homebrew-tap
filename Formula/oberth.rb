class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.61"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.61/oberth-darwin-amd64"
      sha256 "d1dd8eeda80899c3a4d9e0ea84369163814dcd57b02f53d03ecdeed1ba337928"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.61/oberth-darwin-arm64"
      sha256 "b4c9a9ea9f90bb123bf2b4506db1490749e9e31e2475423d6b566875faba6e94"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.61/oberth-linux-amd64"
      sha256 "b2c3f1af3c5a5a6fce5dc0c2cc6709843cdbd2dc62f69e6462b6d3449bcdb24c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.61/oberth-linux-arm64"
      sha256 "fd1228f6b6bd1060f487eaf8ef3f4ad0b5836efa6985d412fca5bc185a3eeccb"
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
