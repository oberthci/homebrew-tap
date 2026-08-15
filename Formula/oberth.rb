class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.12"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.12/oberth-darwin-amd64"
      sha256 "167edd98fb58c5ca5cfdf327b59f4ab6eeb57aa784abcda8dd44d4cad38847b3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.12/oberth-darwin-arm64"
      sha256 "1ca1b6eb285bed0bae2d118ac335f10c92b8044143485c016c26abc1d6d56bea"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.12/oberth-linux-amd64"
      sha256 "b5a6a25695c340ab6c5e74f77fee2081dc291e72d6c480ba16051f71a624881d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.12/oberth-linux-arm64"
      sha256 "35be418538afe4340b0e01d8152d6e174d9a8d39840d3ddb83285e2bd71afdff"
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
