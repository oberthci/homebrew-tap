class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.36"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.36/oberth-darwin-amd64"
      sha256 "6482ea604afb637e09740d27b78ae16976b93d50532710087f690dac4fac1c0b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.36/oberth-darwin-arm64"
      sha256 "79e5014d5b949eced1be91f322daebdb0701fad945b440b47befb8e8ed5cbbde"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.36/oberth-linux-amd64"
      sha256 "19d861a7e908b89fa01411139f779d7c3965a8905977d2018135a83db4e802c1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.36/oberth-linux-arm64"
      sha256 "3370d31fabb4ac7924f52a1a805e9c758650a1e3cd22a797cb29147368cc568d"
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
