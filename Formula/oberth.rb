class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.31"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.31/oberth-darwin-amd64"
      sha256 "d6bc7ab0e8ab9f61d70a083a3ae7c9582195c121214c268e50fe24089e11785a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.31/oberth-darwin-arm64"
      sha256 "72e921f5b3f6383ae66c9c727dcbc6201caef867d1aa67a45b3a546298633fc4"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.31/oberth-linux-amd64"
      sha256 "945e013f401369e0bed6b0d5f15e65fa12954830ff6c85d67c84f22c527e869a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.31/oberth-linux-arm64"
      sha256 "10a638164abe731917e35184369374ca028227dd24f1cfa98c88c16a57315c47"
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
