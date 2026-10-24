class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.52"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.52/oberth-darwin-amd64"
      sha256 "96bad7601ce040f409bb882e640bae4b19f3a3456602547d36a493980f748984"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.52/oberth-darwin-arm64"
      sha256 "98b885dbdcaf5243f7958021aea9bb44fa3808e4807f1976998e99c2ed7b43be"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.52/oberth-linux-amd64"
      sha256 "242b6bba3294b6b30a23785bb66208df82dc9b69c12958904d7fcb219e5fe420"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.52/oberth-linux-arm64"
      sha256 "ceadf09f106f059e414951d48522c7bc576d1ea7a2c00a359337043e75faa9c0"
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
