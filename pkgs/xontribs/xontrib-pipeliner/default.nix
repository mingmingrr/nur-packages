{ lib, buildPythonPackage, fetchPypi, xonsh, six }:
buildPythonPackage rec {
  pname = "xontrib-pipeliner";
  version = "0.3.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "7fcb548cf11061bc9cab56f76e15f03d4d9817d7e4a75511a830cb1f609e369a";
  };
  propagatedBuildInputs = [ xonsh six ];
  doCheck = false;
  meta = with lib; {
    description = "Easily process the lines using pipes in xonsh.";
    homepage = "https://github.com/anki-code/xontrib-pipeliner";
    license = licenses.bsd3;
  };
}
