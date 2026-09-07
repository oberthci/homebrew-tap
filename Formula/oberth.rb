class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.39"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.39/oberth-darwin-amd64"
      sha256 "3bd9624cbd08876840831c0c28a3e014f91e4da1165f7457ab2e802a5cf266df"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.39/oberth-darwin-arm64"
      sha256 "ff720a978b158c45decb99e4e96183caca62a91ebddd14256beebc241f96c3a1"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.39/oberth-linux-amd64"
      sha256 "518060ae0c6732f914fc46a2f8f08984c23355fe4bf3cd0a49cc7645f9fd0ecf"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.39/oberth-linux-arm64"
      sha256 "d19813362010c4a77598c8c3a9c23136ad2beba9a7517f66aed1f0ac04edec2c"
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
