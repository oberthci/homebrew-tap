class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.89"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.89/oberth-darwin-amd64"
      sha256 "c5efee8eebd5e6fc0f94214c1457763b10e2d339880cb94fab8aebfc093c469e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.89/oberth-darwin-arm64"
      sha256 "b67023d541610e8a9de07efd9b2460dcd5de58ac520a15925256fdfad086415b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.89/oberth-linux-amd64"
      sha256 "4a5b57efadb7174f11e8a479567b7435d8cebe85bfc8d915edd37ca3ad4a3041"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.89/oberth-linux-arm64"
      sha256 "aac1378612d58faa4ee14ac4ce7654663a4f1204c53969932d9d20897757d1a6"
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
