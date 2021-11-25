{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-up";
  version = "1.0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "4dea15b055eb846a05bcd8c69dca0926c368c04e311766e2de3e352b5679b944";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Go up any number of directories.";
    homepage = "https://github.com/oh-my-xonsh/xontrib-up";
    license = licenses.mit;
  };
}
