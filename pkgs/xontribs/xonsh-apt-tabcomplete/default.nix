{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-apt-tabcomplete";
  version = "0.1.6";
  src = fetchPypi {
    inherit pname version;
    sha256 = "fabe12a508d49e8292cdfdce29819c603dd99d86cfc441eb080d147b67f3ea07";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "APT tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/DangerOnTheRanger/xonsh-apt-tabcomplete";
    license = licenses.bsd3;
  };
}
