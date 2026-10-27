class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.58"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.58/oberth-darwin-amd64"
      sha256 "74684962e142b88b87bf168677f02dd08425942b3752d643c476197c5c0276c5"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.58/oberth-darwin-arm64"
      sha256 "f7c10e0f5a1c09b4fda5f73fcc0cb8d77144791d9563c3ef4df10fcc5a1d286f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.58/oberth-linux-amd64"
      sha256 "457025ed6e52b25516a4b9a5186f87ec41890049facca4749bf7eb67d6b965b1"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.58/oberth-linux-arm64"
      sha256 "2df1442e372095522d3fdab3d8ca25683cc36e757a9d92269bae92c6ab310def"
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
