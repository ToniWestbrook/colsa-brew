# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Soap < Formula
  desc ""
  homepage ""
  version "2.21"
  url "http://soap.genomics.org.cn/down/soap2.21release.tar.gz"
  sha256 "db9250b00ed36726cc07a04e89fcc9c1699033cf5e2a70e5eb317ef9f1020ff9"

  # depends_on "cmake" => :build

  def install
    bin.install "soap"
    bin.install "2bwt-builder"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test soap`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
