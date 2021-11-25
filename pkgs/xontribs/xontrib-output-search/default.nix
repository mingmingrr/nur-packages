{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-output-search";
  version = "0.5.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "6ea95281677ecab6f6f4c8f928348543c0dcc65544ff568c591498e7392b25c2";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Get identifiers, names, paths, URLs and words from the previous command output and use them for the next command in xonsh.";
    homepage = "https://github.com/tokenizer/xontrib-output-search";
    license = licenses.bsd3;
  };
}
