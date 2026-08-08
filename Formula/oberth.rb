class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.51"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.51/oberth-darwin-amd64"
      sha256 "aa7a3a94385abd203c0e6e94454896f6dbb14d0db52e0188ce6a0c757ace4ec4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.51/oberth-darwin-arm64"
      sha256 "413462bf93a92d04e3fd3ecf3ea41f06868ee417e1e93cacdfbf6b9eba8c0c0b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.51/oberth-linux-amd64"
      sha256 "2924cb29f7451f17b9864ff437db02678e8bc510ccc15bde93834e19e5edf2cd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.51/oberth-linux-arm64"
      sha256 "7689d942ae7a6480262b1d04d0dedff871dda624d128abf9a8b55d93b9c932d6"
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
