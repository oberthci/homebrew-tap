class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.98"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.98/oberth-darwin-amd64"
      sha256 "3e694bd81af61b5eac69e0a1482d425880a5363ad22bd1b19119d57696a2015b"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.98/oberth-darwin-arm64"
      sha256 "0bf90c778498ad6e6348be11ef7f27c70ab4a41dbfe83c5d687a7f565e27893e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.98/oberth-linux-amd64"
      sha256 "6e3c77790f119313a1e556309b7ccdb61e2598041c1f2950c676fa97d443627f"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.98/oberth-linux-arm64"
      sha256 "c705c566549c0e022f087bae38eec6d50729f309eda6d79621b8a1afd3e821d6"
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
