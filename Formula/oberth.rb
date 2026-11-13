class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.22.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.6/oberth-darwin-amd64"
      sha256 "777ee975ac94cb89e9cfbddd8237088f1ccca42f584500ae57097bfcd1de9307"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.6/oberth-darwin-arm64"
      sha256 "e0b11d79741a4894a1de4cbfd5facd99226847f7aacea2109239f63626a9b285"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.22.6/oberth-linux-amd64"
      sha256 "2430735f11fbd1134374d908f5ec3594e8eda85603cb8de8a7a9a2b8d1d73055"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.22.6/oberth-linux-arm64"
      sha256 "bd7526d2d0f12a168be8de852fce7a18b3d654cc8d66df327ddfad5f2b1ea850"
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
