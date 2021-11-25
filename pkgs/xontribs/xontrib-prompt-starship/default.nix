{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-prompt-starship";
  version = "0.2.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "ac117f226f38f4c8a1f6bba9352d99d491709bf8062c70c44dd981924d06e0c9";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Starship prompt in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-prompt-starship";
    license = licenses.mit;
  };
}
