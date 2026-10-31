class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.73"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.73/oberth-darwin-amd64"
      sha256 "2f06e73e2b615686b2039910efbe6f7b4a1194279cf0a819566584c3411e6658"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.73/oberth-darwin-arm64"
      sha256 "2f126bcdd301ab82442f78a0dfab7a8aa2a32a1a4079c619b29a8adf61182215"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.73/oberth-linux-amd64"
      sha256 "bd4982fc1a5d9552d072ee99645e6b90a0dc7c5f12c609809fe9e64fccad4248"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.73/oberth-linux-arm64"
      sha256 "e78b835d9ef7d080a5be6ef7113a05c7eff6771bff84d8abee3e8b58d311356f"
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
