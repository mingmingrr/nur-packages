{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-prompt-bar";
  version = "0.4.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "f4facf8cfa3f02765ae7489818b04906149679888806a92a41c67ac65de172d4";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "The bar theme for xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-prompt-bar";
    license = licenses.bsd3;
  };
}
