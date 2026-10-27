class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.60"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.60/oberth-darwin-amd64"
      sha256 "c4a0ef94ecb71edd2e0691f4e358f4e1e82a1ef6eb8308aba72338cad1464434"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.60/oberth-darwin-arm64"
      sha256 "1e2631d5478f23803f03ac581c5a4c8d8dd28917d25ac6fc3fbd1ee858a34713"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.60/oberth-linux-amd64"
      sha256 "19ddeacfa966708be2d578cdeb73e75f31b7be64e5e694a0852bb7c5894ae340"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.60/oberth-linux-arm64"
      sha256 "ebf5da24872f55bdd395efad1484bd13c3cc08d2a7f3f7a6d8ea4f24f23d46b1"
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
