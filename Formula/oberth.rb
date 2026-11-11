class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.6/oberth-darwin-amd64"
      sha256 "972dd2b443d5d493a61a624b99beec12d1a06e18e8e8d96e7f9dc4a7d7b150e0"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.6/oberth-darwin-arm64"
      sha256 "10c7c11152e07ba94fa589e02186b4061392bb1eae75da9c174ab3b1ee68246c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.6/oberth-linux-amd64"
      sha256 "98bc4684650d57f52a957869b15b2014145fa1092ce5c64841a8b5b53aee8194"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.6/oberth-linux-arm64"
      sha256 "c44ca254b2f340d4e76664fed202ecd101f7d503fff99c22caa9d6933a4a73ee"
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
