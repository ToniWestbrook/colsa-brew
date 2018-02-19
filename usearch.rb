# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Usearch < Formula
  desc ""
  homepage ""
  url "file:/mnt/lustre/hcgs/anthonyw/local/usearch-9.2.64.tar.gz"
  sha256 "721ba9d71e500092c4dab1bf300f26d7a1cbb1271d46592afc6f86d3f8254139"

  # depends_on "cmake" => :build

  def install
    bin.install "usearch"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test usearch`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
