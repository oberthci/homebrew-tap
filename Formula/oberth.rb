class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.1/oberth-darwin-amd64"
      sha256 "5736a8c4c34f68381e39afa1092867615dcc04e5c26ce4d880c059ccb7c71ae1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.1/oberth-darwin-arm64"
      sha256 "79225176ea1f372499fcf9398d1cad858a805bbf646ca54457af5bb1a66f8889"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.1/oberth-linux-amd64"
      sha256 "24642d03d1aba725777b631c410a42320b3e9bbc7886836ea42dcac2b93bf625"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.1/oberth-linux-arm64"
      sha256 "9d9ed76b1fdb27229507919e47f35fae96fb9eef5cf59d4f9685741217b8a307"
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
