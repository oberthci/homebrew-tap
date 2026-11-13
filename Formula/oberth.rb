class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.2/oberth-darwin-amd64"
      sha256 "42f01ef23253522a2ccc5e5ed6f7f56bea3d1bfb6aee0e5d3cf4de3d9e9b26c6"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.2/oberth-darwin-arm64"
      sha256 "04c25dfa8485b9c6b78d5bd4eb827c73eac4bf36899ed32eb9b22c3f5f030058"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.2/oberth-linux-amd64"
      sha256 "4340fdad1ce2fb7f1cc4b4f4c5e3bb48a014b0745784df6be160916188a2c108"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.2/oberth-linux-arm64"
      sha256 "c33b705d836eef5f4ea223ca6c2f5e811e968351d73ec5a9c81edb368e94ef44"
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
