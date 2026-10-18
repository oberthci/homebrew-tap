class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.33"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.33/oberth-darwin-amd64"
      sha256 "a63140aee7585e68eca65f2b697368ef6c2b4bab30fc81c76c12fe5493616c92"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.33/oberth-darwin-arm64"
      sha256 "a00d526832e886968e6f4a8a3b215275e08af790ffa7f10a49a169317240403b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.33/oberth-linux-amd64"
      sha256 "13277bf131702e9d4a81d08b60674949569b75c66830cc32943758df0bdcf98e"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.33/oberth-linux-arm64"
      sha256 "07e45da00b54a97abea5d803370e4ad1a8ef074569dd6b0b24df810a7dad43d0"
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
