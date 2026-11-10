class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.18.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.2/oberth-darwin-amd64"
      sha256 "da44f36ecf777ccf11582e4ff5dbbc577d94046048afb27bf3634391588159ab"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.2/oberth-darwin-arm64"
      sha256 "6c17c7fab6e221f42d6614ec3cd83f85f6c5a69e83bb394bc8c534965c34575b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.18.2/oberth-linux-amd64"
      sha256 "d895d126fb62dc72828b3cd95494bf3f3ad01c29cdef4a40e3eb6ca66df6f503"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.18.2/oberth-linux-arm64"
      sha256 "b09c279bf9abdb0fd247be89481dbe0e4e72100e16384eb26b5d66817582d5f1"
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
