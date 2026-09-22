class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.14.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.2/oberth-darwin-amd64"
      sha256 "cd114dc775d6a421e1d2d2cc2ad321bf942ec3ac2447a23f9e0b9e8ee42de1e7"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.2/oberth-darwin-arm64"
      sha256 "3cf6ad9097c65a385deed54b05eab9f4460c4250db8bd2847b6f86b3072f0c05"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.2/oberth-linux-amd64"
      sha256 "17243ce674dcc7f6e193e950bf9d0320dbab6b997d38778c27ca5fa33d626b3e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.2/oberth-linux-arm64"
      sha256 "4f3d46290ffb28c740b251b599bd1276eca3ccab6205e87f9b9313ef2d6f6d03"
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
