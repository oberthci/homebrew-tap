class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.61"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.61/oberth-darwin-arm64"
      sha256 "c07f2a1e392ff15d20e6648e27feae9ea41c43546882e4f6c63eb1f9db815511"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.61/oberth-linux-amd64"
      sha256 "b0d05c4df8b65bc8437fb8feebd77fb5ac7f63c300ce69d70982f6906e639948"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.61/oberth-linux-arm64"
      sha256 "730d3e75bbb36d29308296f28ca251832745e6bef4c54b3ee1e92c24171287b5"
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
