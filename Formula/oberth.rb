class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.30"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.30/oberth-darwin-amd64"
      sha256 "bf4800497216acde8791d42d0db25c9ca2ad54074e370ffe97d7392a81896878"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.30/oberth-darwin-arm64"
      sha256 "30cf1bac23f6fe39f50698c884fc5065db0c90e497d7b7ec9f132ad7514752ee"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.30/oberth-linux-amd64"
      sha256 "101a5715246082cec57d4e4bfe02a6e93abeea04a9d90be24f04e87c30cbc27e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.30/oberth-linux-arm64"
      sha256 "3ea83fc5393f691300341b09a8f887b711e3dda1ba9a1a2eb32cdde31ad67ec8"
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
