class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.10/oberth-darwin-amd64"
      sha256 "c6daecd1ee26bb781d02ea84240f83f7415db0ee3a7ff25fcc58feab56a160b0"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.10/oberth-darwin-arm64"
      sha256 "eeaf110bcab3b084d984ebab817315bb0f030d3b9433e1db141f657219fd3410"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.10/oberth-linux-amd64"
      sha256 "05d758ddc1296a38d2cb7ea92bfe57ec5888b36455cf7a3bd776f04abbe7eb7c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.10/oberth-linux-arm64"
      sha256 "48e8a029b6f6c2957b98d35d2b97e9a02f6ec1ebce6df8db0be53056589d1426"
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
