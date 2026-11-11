class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.21.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.3/oberth-darwin-amd64"
      sha256 "3469b58f37fd23c7ab7c6f2195669cf1d47db4b30a29fdf237fb45a39aa7d44a"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.3/oberth-darwin-arm64"
      sha256 "79240d2329a8fd10e22eeec4f4bf9d46c833d8463182bd58860d4aae23fef74c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.oberth.ci/oberth/v0.21.3/oberth-linux-amd64"
      sha256 "d698e364d8c2119c0124f4f07bc64bd0c2fb9cf20568cad8841461d28c6ff686"
    end
    on_arm do
      url "https://releases.oberth.ci/oberth/v0.21.3/oberth-linux-arm64"
      sha256 "8cc0c534549f0d7a9cd96cb6526acdb64b2ccc14d450189429d2d3faa47a6cec"
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
