class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.28"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.28/oberth-darwin-amd64"
      sha256 "c185867550a44232599c0469b114c9a0335d17c0d352633b1d55261acebcf59e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.28/oberth-darwin-arm64"
      sha256 "853266418e9a849dabc67e407a4fcfe55a829da14648baa1f620e8de03740bfe"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.28/oberth-linux-amd64"
      sha256 "3e039ba7ff408efbe1e272e019c72da7c45dc7d4f74a39190fdad341d0e0d904"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.28/oberth-linux-arm64"
      sha256 "449bbdba915d33229c90036e97d6e7b23c8df9e08fdc354d5821d3a881ec9d95"
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
