{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-termcolors";
  version = "0.2.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "65a56eaef1db1c5af47ef21cfcc78156a89816d71b5dc465e351b3808dba708c";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Set terminal colors based on selected xonsh theme.";
    homepage = "https://github.com/dyuri/xontrib-termcolors";
    license = licenses.mit;
  };
}
