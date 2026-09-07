class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.42"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.42/oberth-darwin-amd64"
      sha256 "4d9313d709f4fbbcc685650fce6003de6af42a31dcedb53d9e89d36a6665b83c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.42/oberth-darwin-arm64"
      sha256 "5ef0e41a405134eb1ca85df502243957a839b0cc25c49bc3ba69a53e7dd7815e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.42/oberth-linux-amd64"
      sha256 "f7a6d677d0b8c2ad36e16f1898d00af51ad6abce4d66c97521f43a24b526c391"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.42/oberth-linux-arm64"
      sha256 "9cd5c4eb95437676fc02e4d33354dfeb1fa2c8fe141ccd9872155064a8e2fa84"
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
