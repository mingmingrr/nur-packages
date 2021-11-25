{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-macro-lib";
  version = "0.0.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "a9924f36593a7ee138dc877130aef02ecc60f02260a46ef03942a777dd898cd8";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Library of the useful macroses for the xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-macro-lib";
    license = licenses.mit;
  };
}
