class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.58"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.58/oberth-darwin-amd64"
      sha256 "62e7bec697109861a0a5c6b62e0c6e841494b603d6556884b7a96899cc856dd5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.58/oberth-darwin-arm64"
      sha256 "84f5867434ca105941665d9c00a906338f0ec0077c9d272656bb1aa763e462ee"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.58/oberth-linux-amd64"
      sha256 "840f81514fb676885ae2d32e894e01079c78dbca48b024fe3874a04fa0686a30"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.58/oberth-linux-arm64"
      sha256 "2b4e8b1878c6c713fbb6c959be121ca40288adfd85f1e28e181a408869968902"
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
