class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.37"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.37/oberth-darwin-amd64"
      sha256 "8fb3819926c226834225421fffa15ae4a77beb3e5f5fc15981b918d6b3657414"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.37/oberth-darwin-arm64"
      sha256 "bace32268cb13ca6f75b1d412ebe6b1bcd3b3ec454f06c2f8b0a6d13b0c45687"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.37/oberth-linux-amd64"
      sha256 "a2029650df9831c06ba13cf254e115311610f78c2111dec6c27756677cd021df"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.37/oberth-linux-arm64"
      sha256 "39936e057522beee1a9376b10755722aa663194a8e043b9db08f36e25ee1e768"
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
