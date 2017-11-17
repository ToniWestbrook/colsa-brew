# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Cash < Formula
  desc ""
  homepage ""
  url "http://soft.novelbio.com/cash/cash/cash_v2.1.0-alpha1.zip"
  sha256 "39bf7c63c176a6dee42a1fcaf6ae9b1bb062562ece1710c3e29defbc41b491a9"

  # depends_on "cmake" => :build

  def install
    inreplace "cash.sh", "java -jar ./cash.jar --GUI", "#! /bin/bash\njava -jar " + prefix + "/libexec/cash.jar\n"
    mv "cash.sh", "cash"
    bin.install "cash"
    libexec.install "cash.jar"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cash_v`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
