class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.14"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.14/oberth-darwin-amd64"
      sha256 "f9520d565fd532d909980596b31d4e2e847a0e657eb9724db97dc0f7af104834"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.14/oberth-darwin-arm64"
      sha256 "c27fd9564b9bda3106e8b845e30ea15e397cad9da18345b49cb9a6826a83e7fb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.14/oberth-linux-amd64"
      sha256 "2b25ecb5e3a45c7d3704b0e23e7c27fb56e304e831d948d1020ddf4117cd8bd1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.14/oberth-linux-arm64"
      sha256 "c680e41238803255bcfa45f530cbb84a344f607df616ae713fcf5fa379780dd6"
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
