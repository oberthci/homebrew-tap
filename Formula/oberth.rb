class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.13"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.13/oberth-darwin-amd64"
      sha256 "21118fdacf6edb5a8fa2c5d4978e662bd996116ecc7a26522d4780074f7146c7"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.13/oberth-darwin-arm64"
      sha256 "7a04b972f4bddb1db90ac54c995dcd8c8a7130f7d3b73bbfb46febf8e828a47b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.13/oberth-linux-amd64"
      sha256 "5dbabbe5155e4bf803fbaf9de9158f5286d8cf3600a9e4cb3051c3e034776fe2"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.13/oberth-linux-arm64"
      sha256 "6d4cba4a39af2626804ea41c5db68d21048ccac510c73f2ed49cce28fe7d0129"
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
