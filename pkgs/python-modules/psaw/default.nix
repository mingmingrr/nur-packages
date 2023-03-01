{ lib, buildPythonPackage, fetchPypi, requests, click }:
buildPythonPackage rec {
  pname = "psaw";
  version = "0.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "0d62ad9964dfbe9943b2089b25d3e44a7604794491a24a009c4262b2397fed6b";
  };
  propagatedBuildInputs = [ requests click ];
  doCheck = false;
  meta = with lib; {
    description = "Pushshift.io API Wrapper for reddit.com public comment/submission search";
    homepage = "http://github.com/dmarx/psaw";
    # license = licenses.Simplified BSD License;
  };
}
