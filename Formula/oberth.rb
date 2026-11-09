class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.18.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.1/oberth-darwin-amd64"
      sha256 "f05779f1a6be23d6dfd0d5a4fc900594d738668ff0e6651a26251c0dc790d883"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.1/oberth-darwin-arm64"
      sha256 "cfe7518bfc43539817f1634c9ed6f36032163ea7873326f9cadec90c529a5e1e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.1/oberth-linux-amd64"
      sha256 "385f688025c086cacf15ae66a92623d0a72f7f4e651092f2e56a1b92a1679a19"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.1/oberth-linux-arm64"
      sha256 "58c3aca541bd12cf4043b3e5738d8d7e9c0f2d8921a20f7925279c5bd26b652e"
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
