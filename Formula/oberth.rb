class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.20.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.1/oberth-darwin-amd64"
      sha256 "6b9ff0c7d300450cbb3fdf4d79fad00194f6b0fa79f7b52450992663156c04f3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.1/oberth-darwin-arm64"
      sha256 "63d3d85a868dbd096c941f8cc9dbb051a7bb1327f3a4148e7d50d2d12babb902"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.20.1/oberth-linux-amd64"
      sha256 "0ef147a5f9e06035474fa6639db3b79d05fa7681e5c1673451486ed3b9e35d69"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.20.1/oberth-linux-arm64"
      sha256 "ca813560eea1c2d9d99588e058e3d35104093bc06ecaff6c94730875f88c37b2"
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
