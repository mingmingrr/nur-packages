{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-thefuck";
  version = "0.3.6";
  src = fetchPypi {
    inherit pname version;
    sha256 = "ef807c73cdc04dc49073151e0cb41cb22db9b00417a3e4a756999fa8958a11d7";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Xonsh extension for thefuck";
    homepage = "";
    # license = licenses.;
  };
}
