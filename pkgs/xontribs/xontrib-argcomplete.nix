{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-argcomplete";
  version = "0.3.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "8e7d4d1e1fcf4d38125f4b1e3af3994e946fe0fc404383db0e25ce49be3f8eb5";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Argcomplete support for python and xonsh scripts in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-argcomplete";
    # license = licenses.BSD;
  };
}
