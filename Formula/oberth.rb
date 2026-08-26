class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.27"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.27/oberth-darwin-amd64"
      sha256 "bd04059f8f99dd73c83d0ba4520c82deaf3a6d7d70eb1d7e16cc1b9d13a9a7c0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.27/oberth-darwin-arm64"
      sha256 "a3e458b313e3fee6a9f8a09272ccae3e592672215624b98ff250ca4871593ed8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.27/oberth-linux-amd64"
      sha256 "9e4404ce2d508fe1b779a3c88fd66e56675e406d61f7c5c1073c4577ac9a1dd3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.27/oberth-linux-arm64"
      sha256 "70b2456af404e7c8f2c148cfe86f07dab30dfd3af226248707fcb5164cfb9e61"
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
