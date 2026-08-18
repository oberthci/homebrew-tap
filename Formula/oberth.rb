class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.46"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.46/oberth-darwin-amd64"
      sha256 "81997800820b0fa0979c5cf19978ae61ab52737de7251d98e41a22d502e71017"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.46/oberth-darwin-arm64"
      sha256 "8a5f808088039aba46114b6c5c65a375b2cdb9cb58d7734e03f66e4326cdbbc3"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.46/oberth-linux-amd64"
      sha256 "40f750307a22c330141a6e2621423d53dc56a7fb8ba7de941e108eb515b34d46"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.46/oberth-linux-arm64"
      sha256 "d32ebf5ba246003a2ed13296a4404909cf9bcf3562f7bf973febc8d5fdcd4835"
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
