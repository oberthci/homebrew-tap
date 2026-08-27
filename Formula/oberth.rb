class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.29"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.29/oberth-darwin-amd64"
      sha256 "efcc64bfa946fb3a9d726e980a74dfbfaac318e3d271cb25df5066f21160a572"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.29/oberth-darwin-arm64"
      sha256 "093bf3081360f2c58b60a8a2b6ab10031b7345f499bbb6f83fb863f510f5d3b4"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.29/oberth-linux-amd64"
      sha256 "79fcd6d92ea2e268324e27f935757d81ab2e04676604368a597efc6b2b0a75ad"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.29/oberth-linux-arm64"
      sha256 "14665d643cc8e74a5b1d5d3806dda06d7d5168be8f562c7793763299a88c2f37"
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
