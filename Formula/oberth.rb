class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.20"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.20/oberth-darwin-amd64"
      sha256 "710f92d4a34e5e1fc5a405e0ef915c814017c06c9070ceedfc5c738596f53334"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.20/oberth-darwin-arm64"
      sha256 "0b76abc5e9cc6461c726234c870e2b8874a51fc6f7a59b4fd35f82b55ab93797"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.20/oberth-linux-amd64"
      sha256 "1155cb0d627ce3eea78050944b0929b5f25e6125430d4a801b9fce0327a47233"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.20/oberth-linux-arm64"
      sha256 "5cbe789a3e375400c2493c8b512a2cdb8596be30c2ea6b41333c00d3025cafad"
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
