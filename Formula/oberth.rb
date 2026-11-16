class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.23.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.4/oberth-darwin-amd64"
      sha256 "c6ea52f1b6bde71d96a3767a34170e0ca1d4445c75ffe249fadfc0bc29fce3cd"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.4/oberth-darwin-arm64"
      sha256 "2e64d173d5b517e7b6ade2f1f36425ac88a262912420650fa78c8e6521b835d1"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.23.4/oberth-linux-amd64"
      sha256 "91fc48c6cf3a485f678b55fa7c73e2ffa5e74733754df3c98c5af90a994632fd"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.23.4/oberth-linux-arm64"
      sha256 "53dd27848835c2ba105b797f6abe84ac7c911aacd229366145f3273ad763354b"
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
