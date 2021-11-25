{ lib, buildPythonPackage, fetchPypi, attrs }:
buildPythonPackage rec {
  pname = "fuzzysearch";
  version = "0.7.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "d5a1b114ceee50a5e181b2fe1ac1b4371ac8db92142770a48fed49ecbc37ca4c";
  };
  propagatedBuildInputs = [ attrs ];
  doCheck = false;
  meta = with lib; {
    description = "fuzzysearch is useful for finding approximate subsequence matches";
    homepage = "https://github.com/taleinat/fuzzysearch";
    # license = licenses.MIT;
  };
}
