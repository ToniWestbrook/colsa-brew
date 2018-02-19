# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Ldhat < Formula
  desc ""
  homepage ""
  url "https://github.com/auton1/LDhat/archive/master.zip"
  version "2018-02-19"
  sha256 "7b6d1d313613a78b41e4e1f23f1fc42de3926455b234aedf138d2f261c9da414"
   # depends_on "cmake" => :build
   def install
       system "make"
       File.rename("complete", "ldhat-complete")
       File.rename("convert", "ldhat-convert")
       File.rename("fin", "ldhat-fin")
       File.rename("interval", "ldhat-interval")
       File.rename("lkgen", "ldhat-lkgen")
       File.rename("pairwise", "ldhat-pairwise")
       File.rename("rhomap", "ldhat-rhomap")
       File.rename("stat", "ldhat-stat")

       bin.install Dir["ldhat-*"]
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test LDhat`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
