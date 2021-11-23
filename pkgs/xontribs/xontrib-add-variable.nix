{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-add-variable";
  version = "1.2.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "a5fca7247bf08e6733c3a89621914ca227c665427171c99ab7e0b62e49eaaf14";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "This package allow add new variable.";
    homepage = "https://github.com/ErickTucto/xontrib-add-variable";
    # license = licenses.MIT;
  };
}
