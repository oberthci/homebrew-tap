class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.8/oberth-darwin-amd64"
      sha256 "743a86d8a6f423a741949fa3786c985e750e52bde67141593eb1d65a7bf91838"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.8/oberth-darwin-arm64"
      sha256 "d6d906549dfb8c5bc79d676d3c9c44271def0b7fe9dcea06e39a517d0cfb0a66"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.8/oberth-linux-amd64"
      sha256 "adfe8aee7d22117ca038a98ad93cea66c45c4481563a48249720c554209f09c6"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.8/oberth-linux-arm64"
      sha256 "032cd751c967f94f684d65c8785141e3ccc6121740e1b01e2be49cfe3baafa56"
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
