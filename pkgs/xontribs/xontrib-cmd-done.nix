{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-cmd-done";
  version = "0.2.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "bc99678f846af12f04c3d830e32b3a1fb2ff0db2288868efcc691cd99ae041f5";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Send notification once long running command is finished. Add duration PROMP_FIELD.";
    homepage = "https://github.com/jnoortheen/xontrib-cmd-done";
    # license = licenses.MIT;
  };
}
