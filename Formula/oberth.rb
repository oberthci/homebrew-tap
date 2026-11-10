class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.1/oberth-darwin-amd64"
      sha256 "89dd8df83aba790a638725f5abd9fd99c3b59fcc7d1f2d1775b068bfc9cb1638"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.1/oberth-darwin-arm64"
      sha256 "1e878f22213a3f6eaa7f805b997e3900a5f5aee981e3c8e05885a61c887f7469"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.1/oberth-linux-amd64"
      sha256 "18381b54adc746149cd2ba9a99e3cffc3d596897906915436e0cb947c11b633d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.1/oberth-linux-arm64"
      sha256 "af91a79730562be88a453d94bf1e01839eee2bafccf72d108582ee50a63eac9c"
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
