class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.75"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.75/oberth-darwin-arm64"
      sha256 "2a4cf1d9428a31b20f3440631f46a14009bc1486ab47bcda9597e825ca7f4f99"
    end
  end
  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.75/oberth-linux-amd64"
      sha256 "fd39bdc961c25b821fb84af41c3681dd413211e608339ae0a3db49b1c1b4e05f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.75/oberth-linux-arm64"
      sha256 "f8b666902f2720e34fd9276cefdb63b5e8c081a6876c6b381641f362af22bd6d"
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
