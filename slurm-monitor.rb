# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class SlurmMonitor < Formula
  desc ""
  homepage ""
  url "https://github.com/twestbrookunh/misc/archive/v1.1.tar.gz"
  sha256 "08e1a4badbc514eb053935f55496ddd9375dfabd1daae79dfff26ae653d7ab82"

  # depends_on "cmake" => :build

  def install
    mv "slurmMonitor/slurm-monitor.py", "slurm-monitor"
    bin.install "slurm-monitor"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test slurm-monitor`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
