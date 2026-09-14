class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.45"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.45/oberth-darwin-amd64"
      sha256 "6e7ec1bdcb27252de1ab6e524b15e6928a2346c0bb709c1abae9db973d8dcdab"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.45/oberth-darwin-arm64"
      sha256 "40be5cfa547b05b81858cd7edc69f49f7944655232fb7c798b6fecdfdc7f68b1"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.45/oberth-linux-amd64"
      sha256 "9677c655f8434e674371d554a2ee1da9132f248348d9fe9f1f1970410ff272ca"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.45/oberth-linux-arm64"
      sha256 "891a0b363e30cfe84916b067c3feb13339175530cbc9e75104e1629e42ad62f2"
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
