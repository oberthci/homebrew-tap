class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.40"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.40/oberth-darwin-amd64"
      sha256 "0b5ed284d3a963d483aa1891f40c4ff73218fe0ab11c169e36b898d6739acd6b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.40/oberth-darwin-arm64"
      sha256 "071e9f364b9f575ec0151077bbe598b2f5dd625c5bdd49e961ce0211c879df96"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.40/oberth-linux-amd64"
      sha256 "cd0fe5d55697ff1e384bf2d0bfa8f766218558481c5cd66dda7cf1e60727c604"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.40/oberth-linux-arm64"
      sha256 "469019587529ba86af65945ed395e337ae2f4b9ed36c656669a27fe88b4402af"
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
