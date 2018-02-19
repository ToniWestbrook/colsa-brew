# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Spread < Formula
  desc ""
  homepage ""
  url "https://rega.kuleuven.be/cev/ecv/software/spread3_files/spread3-v0-9-7-1rc.jar"
  version "0.9.7.1"
  sha256 "5432055d290ca1119e4d203e0c0b8d753fad193f67379007bbd8a1b2c879fc11"
   # depends_on "cmake" => :build
   def install
       # Create wrapper
       handle = File.open("spread", "w")
       handle.puts("#! /bin/bash")
       handle.puts("java -jar #{libexec}/spread3-v0-9-7-1rc.jar $@")
       handle.close()

       bin.install("spread")
       libexec.install("spread3-v0-9-7-1rc.jar")
                   
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test spread`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
