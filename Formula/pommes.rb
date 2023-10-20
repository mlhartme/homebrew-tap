class Pommes < Formula
  desc ""
  homepage "https://github.com/mlhartme/pommes"
  url "https://github.com/mlhartme/pommes/archive/refs/tags/pommes-3.4.0.tar.gz"
  sha256 "d7fadf5538b0ed79bec622ef98875e7637aa6a63c0cb110d84fb3b2cde13025b"
  license "Apache-2.0"

  depends_on "maven" => :build

  def install
    system "mvn -U clean package"
    bin.install "target/pommes"
  end

  test do
    system "false"
  end
end
