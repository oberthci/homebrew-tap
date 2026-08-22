class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.14"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.14/oberth-darwin-amd64"
      sha256 "6ccd8662cd8f1871f34e1a388f4767b9187006062687a9eefd9cfc4f1f7f6994"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.14/oberth-darwin-arm64"
      sha256 "0d6fcdbb1668b29c241850d8db42eeef9eb6c0997f48f16d563e011b7f493c09"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.14/oberth-linux-amd64"
      sha256 "3ec9437ee944ef8944d3b53025298eec623a255008f9640d2cba5cb5d4c51c10"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.14/oberth-linux-arm64"
      sha256 "0519cf18654eb12f8f1e35156a7b438d14af43757b209c190bf822705cd8665b"
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
