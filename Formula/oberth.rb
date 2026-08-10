class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.74"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.74/oberth-darwin-arm64"
      sha256 "4d5e3c8eaff8b63afb07b2e9114418a0ea746c6253d60862ca101ac84b178c73"
    end
  end
  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.74/oberth-linux-amd64"
      sha256 "f06a7a27bbe461fbbb7fefd536e22029d7da939b4f897e5f9029bf0dadca3cc6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.74/oberth-linux-arm64"
      sha256 "4d557944395a8e09fc41fe423931b97e1a411f42e7b28101c7d9c4d9442aea34"
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
