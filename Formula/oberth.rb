class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.8/oberth-darwin-amd64"
      sha256 "f53a03c4f2f37c14046d43503249723251b71e0e29a1493fb9d0057f129aa3c3"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.8/oberth-darwin-arm64"
      sha256 "05132b74c6d9f9b21a20467cd22ac454efa0a290fb3eed1ef8c5806a66f1c74d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.8/oberth-linux-amd64"
      sha256 "04d4cc7512906f56502b889241fb43f5d31b1863f4f225feacacdc829d4ee17c"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.8/oberth-linux-arm64"
      sha256 "b86b4ea0534e7f2e020297fdc7be4fa042a365fdda7ac620043aace2a2d61399"
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
