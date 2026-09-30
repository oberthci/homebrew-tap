class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.22"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.22/oberth-darwin-amd64"
      sha256 "3bfb7865ed82702086692281a219bd351cd5383cdba339c6b30f65bf68d2ed00"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.22/oberth-darwin-arm64"
      sha256 "ca9ce4b1da961233a16622c24baef19c89c0e42ad2cb61004a32d8d0d7070a4d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.22/oberth-linux-amd64"
      sha256 "e4cfe79dc5655812f64a744e5ac67e23476f2e62ba67e29566b61cf217bc23fc"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.22/oberth-linux-arm64"
      sha256 "9c25e4065bb9472ff1d2bf0a653cab8bab3a74a3ef7fcd988ff2bcb4a008a583"
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
