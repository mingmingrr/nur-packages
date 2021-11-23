{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-back2dir";
  version = "0.1.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "2706adf790695e55e0fce5bb1d319e29b09f480197e11b076efc62ba6995f0bc";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Return to the most recently used directory when starting the xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-back2dir";
    # license = licenses.MIT;
  };
}
