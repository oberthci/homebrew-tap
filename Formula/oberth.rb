class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.32"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.32/oberth-darwin-amd64"
      sha256 "1b99512905f60884e5e6dad1a783a9dc5005a3bb7262de0c347ff78b8d9488d6"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.32/oberth-darwin-arm64"
      sha256 "317e11cf3e9827cc5f3a9a15b1682044c87fe5fda5403a5c247aa795f4f7e9e0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.32/oberth-linux-amd64"
      sha256 "1a17cc63a232e3fae8f1027e1e313ee10d1eecf3b08efe6772ce30892935bb4c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.32/oberth-linux-arm64"
      sha256 "dc6c402b681e955598b01a107fcf0df3175366d200b8f36d75b935e37ff8ef06"
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
