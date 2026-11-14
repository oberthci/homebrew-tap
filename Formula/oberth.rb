class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.7/oberth-darwin-amd64"
      sha256 "6ad27bfc7c81bccec05a8b777febca3f83c19f961cbd9355c6b4578271136508"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.7/oberth-darwin-arm64"
      sha256 "8a9e0b61bd0797cfa2eb9938fbb3f132430e9bea1c4ace5c745830981cc482ce"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.7/oberth-linux-amd64"
      sha256 "63d8bfe880213b1ea09c572b74d5a3c252418f55888295a580286aaadf237ade"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.7/oberth-linux-arm64"
      sha256 "fbac6a0bbe28fc27b06adda4c69b11a91d077fe268c1719b7049b4e925c68381"
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
