class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.6/oberth-darwin-amd64"
      sha256 "a79c1c57ceec0f67fd68429e458dfaca362668c4058dbca4236e36a399aba981"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.6/oberth-darwin-arm64"
      sha256 "dca88eb701f51de5b8e1c9e181b0029f6903b4ba3d742b1ebc2f8d844bc63765"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.6/oberth-linux-amd64"
      sha256 "0b23c95dfb808e6560a769e3b79cf93caf03a82f7fa46efc122fc1d6bc99b8e0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.6/oberth-linux-arm64"
      sha256 "537cbb1e92837a2a9e52d4ec6eb6d9da4a5b540350ca3ce283235b03780d0c20"
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
