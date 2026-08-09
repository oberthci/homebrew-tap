class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.62"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.62/oberth-darwin-arm64"
      sha256 "dd25a6d58cbd313b9e071c29cd9f0fb3e84688f2b906087fd8a8439ae2be0852"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.62/oberth-linux-amd64"
      sha256 "fa6f385672319b0630dd348709d784615207426d6e514182dcbdb6700b9a3791"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.62/oberth-linux-arm64"
      sha256 "31d075cb21b6e45eb49264e35d8cbd9ebecfbe130195b03143c14f2957410575"
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
