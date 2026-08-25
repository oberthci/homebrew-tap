class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.19"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.19/oberth-darwin-amd64"
      sha256 "cc7c36a5ca5f743cbd96f004aef843dff4c2f9ace8d929de1f4b5191e78d47f0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.19/oberth-darwin-arm64"
      sha256 "9f45987469ada891d28f190c957c33995a97a312b00e3507b5e42652a34e6817"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.19/oberth-linux-amd64"
      sha256 "48d1de0838dc0fabd265b67684f244f683e7eb57fafd6105a961b39d1ef5f528"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.19/oberth-linux-arm64"
      sha256 "51e25d70bfeb4b9730c780008762817506a76942ce9c5e2af37726d1d8f31f40"
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
