class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.46"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.46/oberth-darwin-amd64"
      sha256 "834471ef80a80a6447621a8d6e4f2d6d0072f4e4b01eb99d909d1c603ec53a4d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.46/oberth-darwin-arm64"
      sha256 "cc04c738bc51f4212a7dd17575150c23b4985809b33b19273e85bc6779b058c7"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.46/oberth-linux-amd64"
      sha256 "f8ea8227c2cf128f75d7e9b4f471b22c9a0799efb2a2aa65c58749a15dc0f705"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.46/oberth-linux-arm64"
      sha256 "27bdfc39d7fc100c15f8ef5c72781d9bb495bf351a3e3781916a542d087bfe07"
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
