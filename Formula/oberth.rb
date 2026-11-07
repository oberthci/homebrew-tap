class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.97"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.97/oberth-darwin-amd64"
      sha256 "e043abbd5eda9639e8680c42c389260381285a50b62bcc8c79133473bf6f217f"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.97/oberth-darwin-arm64"
      sha256 "b876b5a81e10d6946f2fd19b81220202fe6bbc980eda7349f2b7fd51428530a7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.97/oberth-linux-amd64"
      sha256 "2a0d4d1afb5bc364f09aa66a2d18706b8ff6051841bf20ef2faae6d37dd02de1"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.97/oberth-linux-arm64"
      sha256 "912ebf28e26103a9a0e6560d14c6ccac73821374f86dfa4b7a19b92b47dc9fd3"
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
