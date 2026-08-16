class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.23"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.23/oberth-darwin-amd64"
      sha256 "fca57a3cd3dd334e8b556fe765a8353082d4128dd328385f39ca3da8577893b3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.23/oberth-darwin-arm64"
      sha256 "b5b971a370d80fc425084a12d1719d965d3a30ef3ec5cb35799047fcbc2c571a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.23/oberth-linux-amd64"
      sha256 "8d982019faa5f791de4ed5e23b12caa603d4174ccedc727c0513ea0eb2313c85"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.23/oberth-linux-arm64"
      sha256 "d0a7e5967075cb5d3a481720beb226ddc6216c1150c3238cefbd255846ef982f"
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
