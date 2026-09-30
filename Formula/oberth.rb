class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.20"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.20/oberth-darwin-amd64"
      sha256 "f16ec21bd419b9b8c5679b7200ab5f79091fbad2b234784d5c8121520db82922"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.20/oberth-darwin-arm64"
      sha256 "afc0991d010454adbefc894d6da0924b06426ea191ecd327fcf70bb76956f03f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.20/oberth-linux-amd64"
      sha256 "a433cbf29eff80a4c7630616c5756d6c054df35d2b41c9d0424e175923c12757"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.20/oberth-linux-arm64"
      sha256 "105be18dfb5a5e98e123d318f7908e3a3392161fdd8bd4659ce0bfee41603336"
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
