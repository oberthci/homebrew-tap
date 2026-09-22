class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.14.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.0/oberth-darwin-amd64"
      sha256 "5fff5e8b47d3c08fc10f32285d1fb306024019eab9528f97eefc2abd62d5d544"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.0/oberth-darwin-arm64"
      sha256 "aa8a956b8694c4b5def3cea463532edfe19d747648fc671eff73501ebf9d3d38"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.14.0/oberth-linux-amd64"
      sha256 "5d07940fb495e6898b904f6559994f855ce68d5b4d4ede6b010a6dd3f4968e1e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.14.0/oberth-linux-arm64"
      sha256 "fe81fb5eeb9eb0ab120275838243a810aa1bc7c6c0976c9039741ff680b7b4ff"
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
