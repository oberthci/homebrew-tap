class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.12"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.12/oberth-darwin-amd64"
      sha256 "3a66107dd7dceeeba090e5255065aa33e5ade800fcce435507cf3308d06f7623"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.12/oberth-darwin-arm64"
      sha256 "d5eebedadd73781e6fb9dc05f86b6ec6f7f6a03eac7687dbcd3b0f85ddf35f41"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.12/oberth-linux-amd64"
      sha256 "9d14c0faf634b403e72edae0eb793a7895b861d375f30b7027254dcffecc7ea7"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.12/oberth-linux-arm64"
      sha256 "5b6267e6eb54db205752c0577cc390e2168aa0f9d848e75be3c96e923ce0cb81"
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
