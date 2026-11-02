class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.79"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.79/oberth-darwin-amd64"
      sha256 "58e8f6488bfc1e82e87924f4d805e6b872d44bb09f1acbfad8a2c0296baa7561"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.79/oberth-darwin-arm64"
      sha256 "099ceb38e660b7c2ce2202fc2028510597f71bf972ea89e54dcd21321cb1d137"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.79/oberth-linux-amd64"
      sha256 "0ee70cdac42a55f1a40e5089f64e0c7a873ec6f747ad37a3b493013187117111"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.79/oberth-linux-arm64"
      sha256 "25ee7ca71a88bd212e0e73e7e8dd99bc2340191ae87c015098e1114e2bb91878"
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
