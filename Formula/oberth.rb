class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.74"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.74/oberth-darwin-amd64"
      sha256 "8798e8716f654e1710d777b90877de1dafbc7f344f51f86cafc87d602c7716d4"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.74/oberth-darwin-arm64"
      sha256 "f3f97b2e69ee06775943c6f3902861c52a8005772de6828d2290c044d24adb32"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.74/oberth-linux-amd64"
      sha256 "54846cdb90b77d5d1e7886d0ed1bebb225687b6a25665b0ee32a249bae0c0c34"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.74/oberth-linux-arm64"
      sha256 "97eab65b1d673517c15914ebb63ca1e1c0ea062d462c2ec2d8f01f2eb8756745"
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
