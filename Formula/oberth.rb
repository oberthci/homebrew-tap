class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.19.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.19.0/oberth-darwin-amd64"
      sha256 "923144d59354e966fc86f258ad444f76314fc883bc95e5d2ea81618221b5707d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.19.0/oberth-darwin-arm64"
      sha256 "d1fb29603f6a2046be5bac1eedaf849258d328ced12aef9574def58be52dcfc5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.19.0/oberth-linux-amd64"
      sha256 "f629533368efbc97894392f91766bd9091de5e41e88ace032448b8eb22f87ccd"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.19.0/oberth-linux-arm64"
      sha256 "f56ad58fe070e7229431fabf46410715e852e4d6960d508cd395646d3d2a82ad"
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
