class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.22"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.22/oberth-darwin-amd64"
      sha256 "ad8a01c1f8f11d92dca7f907d589b878ad5a8ddf5a705caf78bb8223823aea92"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.22/oberth-darwin-arm64"
      sha256 "39220b172e7358ab81291d6b058694dd24499e5636c92a13b1d0e204408e3eff"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.22/oberth-linux-amd64"
      sha256 "930001629e664eedc34a0dcd91ba6bc738ab5293a8907016ac13623e52e34afe"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.22/oberth-linux-arm64"
      sha256 "e595ac8a1ff4dad44ec80df6b3127cb81a7b1c4c479d11e27bef5a58b0cd9c11"
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
