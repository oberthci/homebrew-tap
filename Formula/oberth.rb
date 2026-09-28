class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.13"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.13/oberth-darwin-amd64"
      sha256 "99dec816735a8359f10228c9df5a9decfbb0212c14ba266f7e6406b476ea8c72"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.13/oberth-darwin-arm64"
      sha256 "bf04e09aabf3c1b9af9a401278302e766c3e88fe13ab0ebb1f2da93f75fe7f0f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.13/oberth-linux-amd64"
      sha256 "2f5bcc8da4f177bb2d9e34b20f004157a4ec5282c9c62ad111bfc9f318a7260e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.13/oberth-linux-arm64"
      sha256 "741f8d0d83d95801c5fbacb067d736192ebb325bab7113a091140379b0c69bf9"
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
