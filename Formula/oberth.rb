class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.22"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.22/oberth-darwin-amd64"
      sha256 "4ee5601e1c314510bb62ca6dd894ebbda19cdff937a079f6de324ff586f1bf51"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.22/oberth-darwin-arm64"
      sha256 "37f3414fc0535c7b88f4e033042a3670159287962343cac06f599f2afaeb4d2a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.22/oberth-linux-amd64"
      sha256 "1214e2f0e12a6b3ca89ebca670f347f0b637e5c375bc2546ff9c05b9a93b4381"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.22/oberth-linux-arm64"
      sha256 "577fd1c4ccec47eedb7e546e3c8cb441015752fbcfac141766a8da74c792562b"
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
