{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-linuxbrew";
  version = "0.1.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "a0e524685c55ffb26fa7d25e235ed4a8585cb3642a48bbbff9e4f927bedda191";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Add Homebrew's shell environment to xonsh on Linux";
    homepage = "https://github.com/eugenesvk/xontrib-linuxbrew";
    license = licenses.mit;
  };
}
