class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.6/oberth-darwin-amd64"
      sha256 "c2431685533ac0417757220b5cabf35140f030013501a5514773fcf8ac38879e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.6/oberth-darwin-arm64"
      sha256 "99880aaf441d4b56b2fb05415e4626b183e24f659eb9ad8b692b149ddbafb6fe"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.6/oberth-linux-amd64"
      sha256 "2c1f65463817141fac75f2b57707b1904dde11cc0f9451453cfe976a72a544d5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.6/oberth-linux-arm64"
      sha256 "a4cef59b8990cc36fffc6e28a4ad8b15719441d2696c98b318f309d6a6d069bb"
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
