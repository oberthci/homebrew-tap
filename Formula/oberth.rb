class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.86"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.86/oberth-darwin-amd64"
      sha256 "6455a8eba403cb336068c89e031734ac7a50ed9b98f43230019f46ebb480b5ed"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.86/oberth-darwin-arm64"
      sha256 "916c66686e7629d0f3534dd916e357395576f7b693751347c81680a3f4996f13"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.86/oberth-linux-amd64"
      sha256 "363c7e403d33474f28077a6cf8753e2d6ac89e012572c6e2a5ac86929c46a8e0"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.86/oberth-linux-arm64"
      sha256 "283b473e1d9e6ae6e72a132993391800b5392dc21dd8e3998b4c6aa72287434d"
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
