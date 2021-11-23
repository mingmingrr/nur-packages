{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-xlsd";
  version = "0.1.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "cbbbd9b502274fce5368a5ecaec61ec6f134663734139a56058e8c10f73553d0";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "An improved ls for xonsh, inspired by lsd";
    homepage = "https://github.com/cafehaine/xontrib-xlsd";
    # license = licenses.GPLv3;
  };
}
