class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.25"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.25/oberth-darwin-amd64"
      sha256 "ea8f7066eef48fa6c0262eddf08527a349a3bdad32c48ab448b1021267db0d8e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.25/oberth-darwin-arm64"
      sha256 "459d787103ac49f232d1a430d878647fa49a32a5092096f8bd4e81500b9c2936"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.25/oberth-linux-amd64"
      sha256 "347b9f6fa4ccf6238bde510e143080284e500202e4077ac75541ee2b0bfbdcbb"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.25/oberth-linux-arm64"
      sha256 "379bed94ad0053cc10cb0d19b0fb96159fc0b7a4ec74535a6090f1b37d230326"
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
