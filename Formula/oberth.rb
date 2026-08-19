class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.5/oberth-darwin-amd64"
      sha256 "741d770db544d76ec0198a81ce7fb898fd7cec4ae845bda6db9e84937c76a428"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.5/oberth-darwin-arm64"
      sha256 "0265b121ade952dd817dffb7f8deb08fcf1e41c08c6b0e3411f8c08e921a9c5b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.5/oberth-linux-amd64"
      sha256 "2125309e46185cd3173ea5be8643b1f2b9f5d7c2055108663cd83f4cade0cb2a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.5/oberth-linux-arm64"
      sha256 "79b4f291fa59ca18364a63797811f04e6c287c1dce2f67177f0f576e3404bda9"
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
