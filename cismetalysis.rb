# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Cismetalysis < Formula
  desc ""
  homepage ""
  url "http://veda.cs.uiuc.edu/cisMetalysis/cisMetalysis-1.3.zip"
  version "1.3"
  sha256 "42c784be233ed8cd4ab7a74356f05ea9163e4489c2dc97db8f1622228910dbb2"
   # depends_on "cmake" => :build
   def install
    Dir.chdir "hunchback/cisMetalysis/cisMetalysis-1.3"
    system "make"
    bin.install "bin/Metalysis"
    libexec.install "sampledata"
    libexec.install "utilities"
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cismetalysis`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
