# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mdust < Formula
  desc ""
  homepage ""
  url "https://github.com/lh3/mdust/archive/master.zip"
  version "2018-01-22"
  sha256 "d99860f8a33a443fd50d705688274d97bfcbde15e707d658e9bf2b449f901546"

  # depends_on "cmake" => :build

  def install
    system "make", "all" # if this fails, try separate make/make install steps
    bin.install "mdust"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mdust`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
