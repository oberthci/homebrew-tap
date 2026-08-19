class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.8/oberth-darwin-amd64"
      sha256 "f1e3ed1c6f3cfc4adca1c3d9f611a11da739cec3ce0021aacbe726ac5fd5443e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.8/oberth-darwin-arm64"
      sha256 "ece8a4c661d4b2b8f9da9c3e10eb3469532754f6cc71e33fc55420a8bc974a1c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.8/oberth-linux-amd64"
      sha256 "e349943cbcdde7fd1403d869d7349bfb2fdb3a0bd9629ee5d9f0615a89e2cdd4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.8/oberth-linux-arm64"
      sha256 "9b93ba9ab3313b187efc3754de53a2ae99eb7ade11a07ff8525840771f3c2037"
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
