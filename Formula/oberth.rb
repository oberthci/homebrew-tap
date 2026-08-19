class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.3/oberth-darwin-amd64"
      sha256 "39efb189b0c64e19893f7d043a6c78576d4f1455122d402e4774635d1edc9b4c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.3/oberth-darwin-arm64"
      sha256 "bb5968a97c4b4dd9941f4c031c760f61df2bd1dc0ddd20ea56a3a9650b12e90c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.3/oberth-linux-amd64"
      sha256 "5ce7d2f15f8504e2fefc6283be712ef283fa6eed2136015e1fe709fcf043ab52"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.3/oberth-linux-arm64"
      sha256 "a04b35ba75a05dcaaffd739331b4b16a35129ec7e5d19eaf56cac1dac5124734"
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
