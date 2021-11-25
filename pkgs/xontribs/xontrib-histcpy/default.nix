{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-histcpy";
  version = "0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "ccc4557c33b8798ff745472d4dd8bef501f05e764400c939c0a75f71df035353";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Useful aliases and shortcuts for extracting links and text from command output history in xonsh";
    homepage = "https://github.com/con-f-use/xontrib-histcpy";
    license = licenses.gpl3;
  };
}
