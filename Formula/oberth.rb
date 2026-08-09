class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.57"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.57/oberth-darwin-amd64"
      sha256 "04bf2373744d65e7129f3ffb781ad0cb330f88c98c153dc7f1541105374d2142"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.57/oberth-darwin-arm64"
      sha256 "1839ce03acd013a11f4ad5fed796a4b44f4cd283b11fe30dc912b262be0d0e3f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.57/oberth-linux-amd64"
      sha256 "9d51976d39abd7bb00c4c13150f73123a624ff1524e93d5dbf94ccbe5b0152a4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.57/oberth-linux-arm64"
      sha256 "0d4fa51325ae558d503bd77be6b3f46fe472c3793070fe20cd87e1e823255f94"
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
