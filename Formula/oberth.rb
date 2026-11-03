class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.80"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.80/oberth-darwin-amd64"
      sha256 "0224be514f6bca1a4f09c172473b2f7dc2ceeb453f7062ceb97904f3e490eca8"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.80/oberth-darwin-arm64"
      sha256 "de263b4650432f933141a9db4a611eb16c21c798c45829d8c6edd4e86329e0c8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.80/oberth-linux-amd64"
      sha256 "1ca24ff7d61487e2074c022e57af753ffb23b5dfb22e570c9c8465bda48ca314"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.80/oberth-linux-arm64"
      sha256 "e13066d70ff85a7b658a1908e870c0a51916710608314cad1627e66313fc2c6b"
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
