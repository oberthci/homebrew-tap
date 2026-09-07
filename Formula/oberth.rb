class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.41"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.41/oberth-darwin-amd64"
      sha256 "4845eae8dc19014396bb0afc540d31b24190132f0ce6a51d5caebce0ce0fcfab"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.41/oberth-darwin-arm64"
      sha256 "35e8dd8b0510ae77c08423430824cdad98e458ef0561b0dbc04cc3a70c4b9937"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.41/oberth-linux-amd64"
      sha256 "b2150435e4adcfbd5a45d02104b82e4274968a8ad8a501dc58efeafbd4ed249e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.41/oberth-linux-arm64"
      sha256 "af1d2896cf8d3ad100aed7049fbc153c858361f4697d83d3065d74f5eb3007ab"
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
