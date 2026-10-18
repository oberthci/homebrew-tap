class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.35"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.35/oberth-darwin-amd64"
      sha256 "9336f0bfd27bf660056a308fb4d1944098750b285ea05f4c48708e88b4863a60"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.35/oberth-darwin-arm64"
      sha256 "993d322eb1a9c01c57ffef5bfa25e9765405cbdcf5e224aa7299658eff78c272"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.35/oberth-linux-amd64"
      sha256 "0652b94bb9d23d0fdab9a89a1f51400c4f62e6d2a74ca2b5ab478c07f8545f14"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.35/oberth-linux-arm64"
      sha256 "74e48251a2c726ae7d42ea4778350f372918b85423914c1d18bf52b0b2ce08ed"
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
