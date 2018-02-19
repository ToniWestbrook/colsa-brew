# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Metacrast < Formula
  desc ""
  homepage ""
  url "https://github.com/molleraj/MetaCRAST/archive/master.zip"
  version "2018-01-22"
  sha256 "139f5d03f0eae5ac408eb7178686cdf603bf9480cc1730379f7fc23a92dc300c"

  # depends_on "cmake" => :build

  def install
    inreplace Dir["bin/*"], "#!/usr/bin/perl", "#!/usr/bin/env perl", false
    bin.install Dir["bin/*"]
    libexec.install "data"
    libexec.install "query"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test metacrast`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
