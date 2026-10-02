class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.7/oberth-darwin-amd64"
      sha256 "6aceb35fcc62c72885754fa230935060ef016e8dac9fc165fa1e666314cccda5"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.7/oberth-darwin-arm64"
      sha256 "e4979555a74578a697bfea7d854e1ebc82a93b112a04b8823fc715199f0fd328"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.7/oberth-linux-amd64"
      sha256 "58fee8521de3cb51e9350d30b7b281ca6615286c1f11bb5ba765d42dd0aa996c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.7/oberth-linux-arm64"
      sha256 "c975a30fb1a358592f9e229c7d578f227a861f5fc4fdb0468bb011ee4e94f180"
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
