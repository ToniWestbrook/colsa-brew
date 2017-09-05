# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Diyabc < Formula
  desc ""
  homepage ""
  url "http://www1.montpellier.inra.fr/CBGP/diyabc/download/file.php?id=245"
  version "2.1.0"
  sha256 "b465cbbc2108b8d225c21db576417776abb4c23f827eda55f600ea9730b9a897"

  # depends_on "cmake" => :build

  def install
    mv "diyabc_core-2.1.0-linux-x64", "diyabc_core"
    bin.install "diyabc_core"
  end

  test do
    system "false"
  end
end
