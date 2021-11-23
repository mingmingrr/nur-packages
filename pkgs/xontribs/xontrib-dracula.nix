{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-dracula";
  version = "0.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "2400ffa9f125c0c8d5de9de13f67740e473ef234b9941f7f4542aa58126cddbb";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "A Dracula theme for xonsh.";
    homepage = "";
    # license = licenses.MIT;
  };
}
