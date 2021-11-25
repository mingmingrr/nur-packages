{ lib, buildPythonPackage, fetchPypi, xonsh, fuzzysearch }:
buildPythonPackage rec {
  pname = "xontrib-enhancd";
  version = "0.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "2216caf5d652685bf91e34251ac185b876a0270d606a8ea49bcdd5ccff4cde53";
  };
  propagatedBuildInputs = [ xonsh fuzzysearch ];
  doCheck = false;
  meta = with lib; {
    description = "b4b4r07/enhancd for xonsh";
    homepage = "https://github.com/sun-yryr/xontrib-enhancd";
    license = licenses.mit;
  };
}
