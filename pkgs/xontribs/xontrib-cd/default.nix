{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-cd";
  version = "0.1.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "59886e561af605f4378acfcc79a127d8133144081e3dead6e6356e6a689e6db8";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "cd to any path without escaping in xonsh shell ('cd '\u2192'cd! ')";
    homepage = "https://github.com/eugenesvk/xontrib-cd";
    license = licenses.mit;
  };
}
