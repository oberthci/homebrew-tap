class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.25"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.25/oberth-darwin-amd64"
      sha256 "096f7f131aa0f76c1b11d21966a96f5ef794ca4f0a871256feb37a456b571b63"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.25/oberth-darwin-arm64"
      sha256 "9717f24eafb05c8598f88a7db1746470026ec36d50d1dbd3715588f5cefc5177"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.25/oberth-linux-amd64"
      sha256 "db550f2ea3ed3ed3f8fe95e9351a49b2d961ffb3112a86f9b449412205d41dba"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.25/oberth-linux-arm64"
      sha256 "28f199c24577cd25a00a86220b3f088d2b5f991a2a171f088e5075ce3fa327ea"
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
