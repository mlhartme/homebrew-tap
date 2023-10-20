class Pommes < Formula
  desc ""
  homepage "https://github.com/mlhartme/pommes"
  url "https://github.com/mlhartme/pommes/archive/refs/tags/pommes-3.4.0.tar.gz"
  sha256 "5705218dbd94586f172ee77f611115943129e170e6bea57034fa63678f96408d"
  head "https://github.com/mlhartme/pommes.git"
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
