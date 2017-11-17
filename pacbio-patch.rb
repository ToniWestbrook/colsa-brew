# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PacbioPatch < Formula
  desc ""
  homepage ""
  url "http://sourceforge.net/projects/sb2nhri/files/Patch/patch.tar.gz"
  version "2015-10-13"
  sha256 "873d56830dbac50be4089e8d0a9086886b0098f553c6340746b42a3dbcc38ce7"

  # depends_on "cmake" => :build

  def install
    inreplace "myconfig", "source=/path/patch", "source=#{bin}"
    inreplace "patch.py", "/usr/bin/python", "/usr/bin/env python"
    mv "patch.py", "pacbio-patch"
    bin.install "pacbio-patch"
    bin.install Dir["bin"]
    libexec.install "myconfig"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test pacbio-patch`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
