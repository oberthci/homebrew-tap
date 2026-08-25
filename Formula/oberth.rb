class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.22"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.22/oberth-darwin-amd64"
      sha256 "a43bff33c22a5583085b21a1f263ca4fd15c68aec171e5f4f4b5167a08703a18"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.22/oberth-darwin-arm64"
      sha256 "04751ec47581d6230eb292a61732ac32e5bb4c6eeaf08201ba34dcbce9a44c58"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.22/oberth-linux-amd64"
      sha256 "85269d3c3dd5591eb0bba5eba349bef6cf1893a74c3305caaada74ae52af3fd0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.22/oberth-linux-arm64"
      sha256 "8fdac85f4abbef569adba2dc7ff2de1924a6cd07f7b8d0650e1803d05320f009"
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
