class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.23"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.23/oberth-darwin-amd64"
      sha256 "33929680e04b377a4482d6efd0dd4c5def5565ecace3e9405136241e275b647d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.23/oberth-darwin-arm64"
      sha256 "c5e2dfe39ef119da56577be9e0f349cd7a631f2a6579653ebaea8d0352a1918d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.23/oberth-linux-amd64"
      sha256 "9d3f312f61f750dfe4a2c2ee32c7b2925476d182353c3c7170325fada0f7b8cc"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.23/oberth-linux-arm64"
      sha256 "7e4b890a1358af873ac52db94d715e1589aee459e58551dffe0597fb2efad707"
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
