class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.15"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.15/oberth-darwin-amd64"
      sha256 "abeecaf61bb195e06e5a298099db394f69d82917947c7eb5ae1c607c562b0a6d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.15/oberth-darwin-arm64"
      sha256 "670f6bb26ed6c7b8ce2a31389692b3c2bdf4fcdccd0aabb1b8cefa33fc43e65d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.15/oberth-linux-amd64"
      sha256 "e168820160ee55b86d383c798d1c12632daee7a87749320a3a3733a18f1fc850"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.15/oberth-linux-arm64"
      sha256 "e97c20662990c19bd448f16f000067ce067e8591c6772a6c068d6430d8d2e517"
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
