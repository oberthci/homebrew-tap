class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.41"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.41/oberth-darwin-amd64"
      sha256 "a2d709e3854e99a889ea70515b542e53cce887310a589bb776b97d8392ea51ea"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.41/oberth-darwin-arm64"
      sha256 "7f667cde252190552c78037b7f15143bfe0ac5044c11233cfbd71628fb4eaf28"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.41/oberth-linux-amd64"
      sha256 "a2e15226378e3e8872603866d2b0550a58977ab17e1e069b429546138ab4cde8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.41/oberth-linux-arm64"
      sha256 "321efc49611ccb17df219050cd119f6fe7edb43843383f5a55cce09f1b33d514"
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
