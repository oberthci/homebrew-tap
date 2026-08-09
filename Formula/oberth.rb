class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.56"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.56/oberth-darwin-amd64"
      sha256 "24b516a18a132fd2a0c6d3ce2432f218b5791d03dc0ded57cd55514de0619201"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.56/oberth-darwin-arm64"
      sha256 "fc1aa1936c75d05ce21c6102373743fa96028cb77c8fb28369b422227eed2d9f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.56/oberth-linux-amd64"
      sha256 "9b850fc5384c828bc1679e850f2a85caaabe7ccc79a06fb38931543195d3c014"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.56/oberth-linux-arm64"
      sha256 "896d134b8afaf4b630ba99368b2bfc5c3fc7bd67c842cef3445b9aae9bc74fd5"
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
