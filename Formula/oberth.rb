class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.3/oberth-darwin-amd64"
      sha256 "09051b18b389d7b3e8efffe0a31abb30309aa0754e891dd2954e94dd2d0317c3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.3/oberth-darwin-arm64"
      sha256 "8cc8cbf0e6d0940285e97f93f5f1612ef37936763faf8ac506d14b154c820e96"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.3/oberth-linux-amd64"
      sha256 "7cbefad4b1671cb5d49e38ea971cf99801e6c767740d923e4b18ee28b40fa010"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.3/oberth-linux-arm64"
      sha256 "4895a45120c53b7f5fc10ff39cb9dc24c2182c48b17969b529e2a61aef3910ac"
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
