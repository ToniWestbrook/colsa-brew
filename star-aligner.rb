# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class StarAligner < Formula
  desc ""
  homepage ""
  url "https://github.com/alexdobin/STAR/archive/2.5.4a.tar.gz"
  sha256 "17b02703cdd580c9fd426a14f20712ea252d32a4ded804eef759029b600e3afb"
   # depends_on "cmake" => :build
   def install
    libexec.install Dir["extras/scripts"]

    Dir.chdir "source"
    system "make"
    bin.install ["STAR"]
    #bin.install Dir["bin/Linux_x86_64/*"]
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test star-aligner`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
