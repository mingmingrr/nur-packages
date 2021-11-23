{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonshpiration";
  version = "0.0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "2c482bfdb161f8035d26e567c1ea15044f7c4e04e92fdaa37c3fba5d811ea98c";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Either you are typing really, really fast, or it's a xonshpiration";
    homepage = "https://github.com/Carreau/xonshpiration";
    # license = licenses.MIT;
  };
}
