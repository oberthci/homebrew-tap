class Oberth < Formula
  desc "Single-node Git-over-SSH CI service for Kubernetes with repository-owned Go pipelines"
  homepage "https://oberth.ci"
  version "0.16.19"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.19/oberth-darwin-amd64"
      sha256 "2f41d1904e475d6a21089911d34ecb210182300e594ce8dacd19cf28f30ad809"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.19/oberth-darwin-arm64"
      sha256 "f16704fcca69072c89753dcfbddfd240788de8950a203577b92b3075d143fc6f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/oberth/v0.16.19/oberth-linux-amd64"
      sha256 "5fac28498e186c6ad1c32cbc28772b0a74c864d65db0a71917457e2cec1a4f10"
    end
    on_arm do
      url "https://releases.cloudtaser.io/oberth/v0.16.19/oberth-linux-arm64"
      sha256 "179ffd5014dcfc8a972db91d28c2c69030cebb9b5e041de3ba1831d40db50957"
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
