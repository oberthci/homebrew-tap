class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.26"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.26/oberth-darwin-amd64"
      sha256 "5a63b3dae0212e0d7798e340e95de1efd195f9c103f5b1db4b9d435d48cb908f"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.26/oberth-darwin-arm64"
      sha256 "e7b58434d35a490c0918cc83e2cf9a5687df6e0e80c1fbe27d3f44dca95454dc"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.26/oberth-linux-amd64"
      sha256 "349e0fdc8b3722b7d31a96efcef280d183a9166cb0338108920ce88d76077b49"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.26/oberth-linux-arm64"
      sha256 "a7572cef8bc4b13d3ba32b509c9e04c58581889ddc5e00b6147ed0ff38abebc4"
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
