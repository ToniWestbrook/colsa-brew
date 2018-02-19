# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class FastViromeExplorer < Formula
  desc ""
  homepage ""
  url "https://code.vt.edu/saima5/FastViromeExplorer/repository/master/archive.tar.gz"
  version "2017-11-03"
  sha256 "b8bacef3f0e5ae30d4d73c41cc7f5e87084a95a08a226eb6aa47910ccaeb4c66"

  # depends_on "cmake" => :build

  def install
    # Compile program
    system "javac -d bin src/*.java"
    libexec.install "bin", "test", Dir["*.txt"]


    # Create wrapper
    handle = File.open("FastViromeExplorer", "w")
    handle.puts("#! /bin/bash")
    handle.puts("java -cp #{libexec}/bin FastViromeExplorer $@")
    handle.close
  
    bin.install("FastViromeExplorer")  
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fast-virome-explorer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
