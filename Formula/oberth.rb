class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.4/oberth-darwin-amd64"
      sha256 "c9b83e7f927766375596b575a9f6c3b3637aac500568332df0a89d5c446f85c4"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.4/oberth-darwin-arm64"
      sha256 "dc64916d42b72ac8845896e095a6d8a4a83b1e0d62e8ce136bb91f2d79261de2"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.4/oberth-linux-amd64"
      sha256 "73eb7cea902db93d1c68b30d743439b1b2ee0e183b8d828f3da800a0a948c82e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.4/oberth-linux-arm64"
      sha256 "d89080a511ff01c8b32286f5452ff44e7264be7f582624792d8a682486b74067"
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
