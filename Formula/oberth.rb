class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.13.28"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.28/oberth-darwin-amd64"
      sha256 "695074195f65bd04b14728d6543f8ef508a783122a586719b86e4dbd54443449"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.28/oberth-darwin-arm64"
      sha256 "2cc6bb1fa0a7cfa8fa8fe0e050e8d6cbe9686beca793669101173178dcbe5d45"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.13.28/oberth-linux-amd64"
      sha256 "7d441f64cac9eb9ada7af9373509342302d73dc3af8c54f2f6edc6ae9a325dbd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.13.28/oberth-linux-arm64"
      sha256 "611e53067528c106fdf23c0f60d508033072a6f8d3a1942e05382a0ebc6ba755"
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
