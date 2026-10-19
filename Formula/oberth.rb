class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.39"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.39/oberth-darwin-amd64"
      sha256 "6f1b07ac15308a5c1cdd3e93d91b0c4967bc689b0111029c24d49b201f06ea8a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.39/oberth-darwin-arm64"
      sha256 "b1ac3c042bca2ba53fc3c704f515293f90c86357fc22fb28133a86c4a75a33d5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.39/oberth-linux-amd64"
      sha256 "a1024b47d6ab6085588dbe6045dc1b4e038813756d116b4e9d1bfce848b50750"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.39/oberth-linux-arm64"
      sha256 "3afd973c1389d0114121da64a155fd7ae2aad52b0e97c9fbaac6958d269e0868"
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
