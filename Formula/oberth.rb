class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.11"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.11/oberth-darwin-amd64"
      sha256 "6ab5c33417faf16c3f1cfb1573491a97d61abb628b5a051711d4c6cb69e1cace"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.11/oberth-darwin-arm64"
      sha256 "85d227ff060df457a562171ae64bd0ae78f6e7946349dc8586c699397360d99a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.11/oberth-linux-amd64"
      sha256 "ca0bcadd9543038a9848484bb83c8c6dacde7147c06e54dc78c7b7b38b2f786f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.11/oberth-linux-arm64"
      sha256 "d1be94f4b808ecf8ada6885c720775e2ac6a6a756e4a9cd499ad9a5a5774d576"
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
