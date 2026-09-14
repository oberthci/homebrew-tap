class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.43"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.43/oberth-darwin-amd64"
      sha256 "1f83a8cece4d24ba6c0fbeb9e85eaa53663da0a6f0d96986333d05a4bcbe5ec6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.43/oberth-darwin-arm64"
      sha256 "d7f6b9602edaa4463f3f334e0e054aa7b5d3a30a45ce3b0ff73499a7af8cfc64"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.43/oberth-linux-amd64"
      sha256 "8753f90f28362a779cc6104b287bf5293a8a4d534c9a4d445149042991821bb1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.43/oberth-linux-arm64"
      sha256 "50cb2e8328876d26e42953b47534a6b120bbb15226d4f71cde891294766cc6d5"
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
