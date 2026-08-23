class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.18"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.18/oberth-darwin-amd64"
      sha256 "fccc3e0f700f2ea95548fa963fe9f3ad741e19df30c54970b49c61262e8e4b62"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.18/oberth-darwin-arm64"
      sha256 "68cbe485d71d679880235a1e7d3e4e7486cd5a630587d3770a36463e6b9ac408"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.18/oberth-linux-amd64"
      sha256 "ecd914c9a6bf29e7d52ff2aadc7d6cc87dab5505d2905ac576ff10eca3cd8ea9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.18/oberth-linux-arm64"
      sha256 "9704ee1e17a7f6483462614aee8fb24f4e2bee0919eb277af0bb72e5ee01032a"
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
