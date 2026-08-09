class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.60"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.60/oberth-darwin-arm64"
      sha256 "8e0cff9b3d9a699eecdece8a65be706e3a981229e139327044d1ade772306d80"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.60/oberth-linux-amd64"
      sha256 "21833db937b2c2bb53635d1550fae01b50d19866566dd89d74a01671fa9f921f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.60/oberth-linux-arm64"
      sha256 "ad79b45d274c7b27a6bd2da8e47bc59e3a3bf46c5204510d846f6a29d9b060de"
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
