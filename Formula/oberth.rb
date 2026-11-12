class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.9"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.9/oberth-darwin-amd64"
      sha256 "4863e83eabc3e85d8f54a9e6e0c53af9af8ad4b8c3056e32dc063c993992d7e4"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.9/oberth-darwin-arm64"
      sha256 "96f87984aba6ab0041f2c7d1469c00a7cff8b8a46f32b5004e832cc9d925ec5e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.9/oberth-linux-amd64"
      sha256 "a422ce8b1f282eaef0b8213c063fc4e767b5cdfc1edb34478a232d9ea0003476"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.9/oberth-linux-arm64"
      sha256 "ba0289f727d6a92acc34af6307c1f075f67ba62650e1c1b84b9596474a82b7a3"
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
