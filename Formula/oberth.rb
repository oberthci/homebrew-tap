class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.10.59"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.59/oberth-darwin-amd64"
      sha256 "3c65ff0a7e6849e39acbec7b51abedca8c7aa1959ea7ec74691f6c81031ad567"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.59/oberth-darwin-arm64"
      sha256 "6b6c343a20a1da191a82407cb3597db9c61dde92a8a6447815b76d06460a5cc6"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.10.59/oberth-linux-amd64"
      sha256 "91680cf7555488c13d62375a8c167ba8f9e553a00909c07add3d9469443e6dc0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.10.59/oberth-linux-arm64"
      sha256 "d2394b7f42afae069b9c7dcdcc4912d4deeda00481caf3dfa8746bc4c5885282"
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
