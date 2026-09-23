class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.15.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.15.0/oberth-darwin-amd64"
      sha256 "ec122ce3f3fed9b15004fbfd7803ccba97d3abdb3697c9348d0587c90d067c8d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.15.0/oberth-darwin-arm64"
      sha256 "5abdf80d15defc51a8e0871737b5ce6e73b72aa1968084926172369b6a17ce99"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.15.0/oberth-linux-amd64"
      sha256 "aec7184404b5ee1384682af11f0688a57cf768ad093a68fa3c4a5e7ea4564d9d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.15.0/oberth-linux-arm64"
      sha256 "53737be7caf57d236ae30716ef222032a94e9628fe10dd22039a75c3d18406ab"
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
