class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.20.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.3/oberth-darwin-amd64"
      sha256 "e6a0df81899521bd8b74353fa79f58bd5ea92cf2c013746ffdfb544e0e63e8e7"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.3/oberth-darwin-arm64"
      sha256 "85002e28c8e38df34ed49f4e6e5baadb2a0db397ae6e9425195faf42489b9e2a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.3/oberth-linux-amd64"
      sha256 "e5ac824f81f3b2cde022d8607524daa30f31c05fda602ba55b31f96e393f4f40"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.3/oberth-linux-arm64"
      sha256 "ec39ff5509b1846e7ebdb509dfb09a9faaf6dcb8d26c32d3229d754f4ce2d5ad"
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
