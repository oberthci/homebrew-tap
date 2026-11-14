class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.8/oberth-darwin-amd64"
      sha256 "0b4116783a9e7bc2ccb5e801b347ca056abcda5c85e8cebaf6c7b1d7353350df"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.8/oberth-darwin-arm64"
      sha256 "2ab928560d31f2c6f44b2c0c3a4eef94a1d9c770c5d5a142816d11c492b6c7c8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.8/oberth-linux-amd64"
      sha256 "0c037585c4e6f6f136e9164a9127e8e07e695f5783716ca60fbf231965dd4c19"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.8/oberth-linux-arm64"
      sha256 "3912d957c5a3ca7ae544871d730aeeca352253428a1b66c0d7b6cad5fd1fbfc8"
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
