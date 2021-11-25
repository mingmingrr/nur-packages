{ lib, buildPythonPackage, fetchPypi, xonsh, cryptography, ujson }:
buildPythonPackage rec {
  pname = "xontrib-history-encrypt";
  version = "0.0.9";
  src = fetchPypi {
    inherit pname version;
    sha256 = "fe72e50f667b93ddcb868c97925718d42d3fce79332f69119fb900e8887395e0";
  };
  propagatedBuildInputs = [ xonsh cryptography ujson ];
  doCheck = false;
  meta = with lib; {
    description = "History backend that can encrypt the xonsh shell commands history.";
    homepage = "https://github.com/anki-code/xontrib-history-encrypt";
    license = licenses.mit;
  };
}
