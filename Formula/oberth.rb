class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.17.99"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.99/oberth-darwin-amd64"
      sha256 "6e8f0a61ed393defa702fa4dff7c4932449bd1b533b46060f70df943ac9a895b"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.99/oberth-darwin-arm64"
      sha256 "5329ebb618b556fecf21735e797d220c290b9afba31739f6273ca193a8a05e19"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.17.99/oberth-linux-amd64"
      sha256 "cdbf447604ea3aec7cee8240dc79a9608254b38adfb65eff228373d4f93f482d"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.17.99/oberth-linux-arm64"
      sha256 "a60ffaae63f493be8dd1752a955632a31c3eb017cd967be3f51a60aa150dddea"
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
