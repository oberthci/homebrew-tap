class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.12.14"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.14/oberth-darwin-amd64"
      sha256 "d131dc34374721bbac1c76bad547af2e9bf21f67954e1feb8724aa33af65c6fe"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.14/oberth-darwin-arm64"
      sha256 "c98fe2cf5bb971b2fe1ec8655e0ac5e5ed6f9a33867a8f9de88b1010d01cc498"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.12.14/oberth-linux-amd64"
      sha256 "b57863a5c65a5acc2c802b68c8305ac3f9685572b8ef3d90793d1ec23cefea1e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.12.14/oberth-linux-arm64"
      sha256 "ad8b937d9929cd0d70ab12a4af427907722572fda4aa730cba16ed1f7363c5d3"
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
