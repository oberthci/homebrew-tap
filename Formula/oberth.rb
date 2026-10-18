class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.34"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.34/oberth-darwin-amd64"
      sha256 "7462dc0852923a7d3acf5475ed982aa8677cf2253b20eba15107981018f85004"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.34/oberth-darwin-arm64"
      sha256 "f46a5dc5d28cd942e6d19cb1a2b53cebc03396230293d85727fd5a9ac71d64bc"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.34/oberth-linux-amd64"
      sha256 "bffe7000c59d461af4bb4b01ed3f260d6fc68ef77031b3064d37bf32e444ff83"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.34/oberth-linux-arm64"
      sha256 "31a863be69f48f2fb9bbe35b5a28dacf3b3690e31c463dd7786a52dfd65ebca2"
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
