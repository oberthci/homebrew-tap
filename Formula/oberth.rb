class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.16"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.16/oberth-darwin-amd64"
      sha256 "ed822550d716aae86eefb8033e22f78e63963224154917299de8f87a6bf004a0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.16/oberth-darwin-arm64"
      sha256 "b29a230128b9710d950585cb32098824869e92aa55731403b07d6cf8f5a0232e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.16/oberth-linux-amd64"
      sha256 "c96c9619deab8ca051a7aeaae495f7306677f7e11f159d77534d2e6bc407b669"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.16/oberth-linux-arm64"
      sha256 "e75dd9499057f92c0b493a717bfa5ab045086c47e8bb5858388ef0be49e0f62a"
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
