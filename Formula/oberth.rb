class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.42"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.42/oberth-darwin-amd64"
      sha256 "a758c230efc5c6bd037db88ad6d03546da4e3b837f402c99fe6f7f0d3e2679cf"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.42/oberth-darwin-arm64"
      sha256 "2352fad81aa2b67bdd5e8ad9c0b5215ff8c35076c8f46cb9efb153e22a07a63e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.42/oberth-linux-amd64"
      sha256 "6a9fb4b07a64e914c40e6facf2a0943f648461d938d60854a39877de3bee326c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.42/oberth-linux-arm64"
      sha256 "03f4474622fa0a3bdd2403dbd60d7b4b77255e6c0d4719bc7ef56666b5556478"
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
