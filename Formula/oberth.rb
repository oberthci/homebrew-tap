class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.4/oberth-darwin-amd64"
      sha256 "ed54d3c599eb9233cfe7b30a0e4631cae8e3ac0a0f0c47b30c1a4e59a5161aa6"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.4/oberth-darwin-arm64"
      sha256 "b7d847b44732975a35b9ede3c33010c582334383b778fc8cc43cc30ee4ec9ed3"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.4/oberth-linux-amd64"
      sha256 "f3cc841b9e67d3e7adb051dc0573dd4b978d037baa43c9fdffb2216c5c24f73d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.4/oberth-linux-arm64"
      sha256 "d6455872366fd3f747f25f3ed4ab1ebbe25feb6c840baf047e673273c33a3146"
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
