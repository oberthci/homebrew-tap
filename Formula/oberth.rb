class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.83"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.83/oberth-darwin-amd64"
      sha256 "e06884add7b54be0336d25ca828884f25471651e302dc84d70ff3c268bbcab64"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.83/oberth-darwin-arm64"
      sha256 "9f27d6196126cf4ddcfb95eb59c09c5688e6a5c8b9b9a9cf224ace0a3423a140"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.83/oberth-linux-amd64"
      sha256 "57928ac1baef717714da0aaeb1d590d2eebd8eacb1ddefc9dc4f1151662006a3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.83/oberth-linux-arm64"
      sha256 "00c00149e0c8684b7ad181757d7a693840a6b652f4d917fcec65770244361a8e"
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
