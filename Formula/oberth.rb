class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.35"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.35/oberth-darwin-amd64"
      sha256 "c4b80ace423c1b1cede58a41ba181aefe46a962ae4fcef91bdabdd8e7624e369"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.35/oberth-darwin-arm64"
      sha256 "881613ce155ca8bb24b60f1ecedb4f2417bcffd18bf504ba588793c325cf2f3a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.35/oberth-linux-amd64"
      sha256 "c982d3d90fc0fa020a5eea42a9da4b93dfe5b3f29fbc22250ef1790b0608bdf2"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.35/oberth-linux-arm64"
      sha256 "ea66f3821e4863d985d1cec119dec531e15a6464c66576b148ccfc9452b49eba"
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
