class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.31"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.31/oberth-darwin-amd64"
      sha256 "9114f79b6b7f66aee37d600aca2741ea525df81f72f023fdca9cff8214eeae11"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.31/oberth-darwin-arm64"
      sha256 "9230d20ed76837a87f48ec661ba16f7eb13d1779d6d66585dd72cc483a52cb22"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.31/oberth-linux-amd64"
      sha256 "d957d3164b80d870c0a75616542b10bffab0397ad52bf538fdbbe5bf9bfceef0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.31/oberth-linux-arm64"
      sha256 "757c29c0943f390023d3bfe6b58cbd9887af5bf663bbe39c7fc578d3829abd31"
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
