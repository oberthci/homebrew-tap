class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.21"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.21/oberth-darwin-amd64"
      sha256 "9182381cf382686f2cdb34a20cd1c8fe00f70515ce4190d3c8e8127ef6bb6e4e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.21/oberth-darwin-arm64"
      sha256 "cc58a1b5b7ca1ee27904e22089f62f3502d210e0a8c6d896ff5356795c839a65"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.21/oberth-linux-amd64"
      sha256 "9a72f312a7705b3f0b1c4342541690af163557fc2fe92049fecaecef3cb75041"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.21/oberth-linux-arm64"
      sha256 "265d05e95e983690a63a5d44680ab59829b5e9b145651905de26b2578ee3b398"
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
