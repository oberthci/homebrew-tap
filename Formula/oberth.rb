class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.12"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.12/oberth-darwin-amd64"
      sha256 "2781ee6f11125d74ae566f615be3b409a90ea07e86be263eedc52439e95c1ce3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.12/oberth-darwin-arm64"
      sha256 "5163c52ff88acaeb2970c97503e18758face711d0cf54dbae806ac7ba17d3549"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.12/oberth-linux-amd64"
      sha256 "a03adbad3328776ef179358ee371e3d10c469014bac983818279429b70ed5561"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.12/oberth-linux-arm64"
      sha256 "ef7c0ec3e40d120b229973c5fd26d63452a10e2b075187943783e2a0e1e45cd1"
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
