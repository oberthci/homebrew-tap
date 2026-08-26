class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.26"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.26/oberth-darwin-amd64"
      sha256 "39201911d07e613f0f16c0c5fed0c7468d67a733c496e91a2e38941b04af7139"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.26/oberth-darwin-arm64"
      sha256 "e5deabeb476c2b2f900d9648369525e822fe56a9b79d29c23c4e5127bc9f88f7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.26/oberth-linux-amd64"
      sha256 "98ec20c69dd7d20c5f34523dedb099428fc0e687e56e1fb7875ef210e1e71588"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.26/oberth-linux-arm64"
      sha256 "9d634dc7d3eccbc090a5e0aa32b6efc364c2c70d380ef218408b3503bcf0f169"
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
