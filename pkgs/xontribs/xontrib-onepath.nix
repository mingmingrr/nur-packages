{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-onepath";
  version = "0.3.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "c582e7b3f456e0bef7d5fc495971411ae64bf5dd2cccc7615d24438447a12224";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Associate files with app or alias and run it without preceding commands in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-onepath";
    # license = licenses.BSD;
  };
}
