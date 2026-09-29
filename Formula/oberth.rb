class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.18"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.18/oberth-darwin-amd64"
      sha256 "22ea428e9db1f47abb700885724adb5c3fcfe09fe413f8de9c734793ab8b470f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.18/oberth-darwin-arm64"
      sha256 "9508a9b8087e1da03a69c48d315b59dfe0ada9935e4a3701e84d1524c1bcbdb2"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.18/oberth-linux-amd64"
      sha256 "6bdc5bd7715ff63e810a2215a4e34e185223fef1edfc51e375285affbfdcd29e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.18/oberth-linux-arm64"
      sha256 "dbfc06533b28f1bce95382956a222f1fb82640861a0f295174e0294ef23faf90"
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
