{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-prompt-ret-code";
  version = "1.0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "cddb95e5f4f192e255129b0ea784fae66295fbc8d65d784d88319ec732ee1439";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Adds return code info to xonsh prompt.";
    homepage = "http://github.com/siecje/xontrib-prompt-ret-code/";
    # license = licenses.MIT;
  };
}
