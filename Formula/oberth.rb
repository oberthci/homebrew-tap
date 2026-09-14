class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.44"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.44/oberth-darwin-amd64"
      sha256 "1bc4bde89d685a39d4d9e7672cf502a8ca58620fb1b5e1071cd25356ab1b7e32"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.44/oberth-darwin-arm64"
      sha256 "e407aeacceb09b38531970c32613bc4cc18336a5da59f5e14341fd5735b3c938"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.44/oberth-linux-amd64"
      sha256 "48113c48e5839418b00b70f03e1983cb57181d371150d027dc27efdeef2a6414"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.44/oberth-linux-arm64"
      sha256 "6b1b9e4815db2a30c20025f4f6572ba6b5198ff1354053d1f903e24acc1208b6"
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
