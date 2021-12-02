class KicadDiff < Formula
  include Language::Python::Virtualenv

  desc "Python program with a Tk interface for comparing KiCad PCB revisions"
  homepage "https://github.com/Gasman2014/KiCad-Diff"
  url "https://github.com/leoheck/KiCad-Diff.git",
    using:    :git,
    revision: "6cb27134908b3d0383f57b914f97a1d34345c339"
  version "20211122"

  depends_on "pillow" # We will install Pillow later on; this dependency insures we have all of Pillow's dependencies

  def install
    venv = virtualenv_create(libexec, python=ENV["HOMEBREW_KICAD_APP_PATH"] + "/Contents/Frameworks/Python.framework/Versions/Current/bin/python3", system_site_packages: true)

    system "#{libexec}/bin/pip", "install", "--upgrade", "pip"

    File.readlines("requirements.txt").each do |r|
      if r.strip == "python_dateutil==2.8.1"
        with_env("SETUPTOOLS_USE_DISTUTILS" => "stdlib") do
          venv.pip_install r
        end
      else
        venv.pip_install r
      end
    end

    rm "plotpcb"
    mv "plotPCB.py", "plotpcb"

    system "echo \"from setuptools import setup\\n\\nsetup(\\n      scripts=['kidiff', 'plotpcb'],\\n      packages=['.', 'assets', 'scms']\\n)\" > #{buildpath}/setup.py"

    venv.pip_install buildpath

    bin.install_symlink "#{libexec}/bin/kidiff"
    bin.install_symlink "#{libexec}/bin/plotpcb"
  end

  test do
    raise "Test not implemented."
  end
end
