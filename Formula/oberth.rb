class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.32"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.32/oberth-darwin-amd64"
      sha256 "1ec00fd5d5dd8afc95d04a14a6b06ce74bf13e438d11266590f32daadae157aa"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.32/oberth-darwin-arm64"
      sha256 "c804da8505e90def7cbf64148946eb93d27fe947a15797596421e46d223717d7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.32/oberth-linux-amd64"
      sha256 "0ef22bbddb2f797a65beff018d1bc3210d94da84f5db85292b0531d8ed2de4af"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.32/oberth-linux-arm64"
      sha256 "e91e585d01b86932fff6dca7be719003e83489fc12960caf5ff059ddf6f4838d"
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
