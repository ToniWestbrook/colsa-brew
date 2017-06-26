# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gkaks < Formula
  desc ""
  homepage ""
  url "http://longlab.uchicago.edu/sites/default/files/gKaKs_v1.3_0.zip"
  sha256 "dfeffcb57fc44fa007b9e7423bb0ae0cfce17f716102fd705c2520fa4212ed5d"

  # depends_on "cmake" => :build

  def install
    mv "gKaKs_v1.3.pl", "gkaks"
    bin.install "gkaks"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gkaks`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
