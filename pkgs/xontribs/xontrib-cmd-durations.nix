{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-cmd-durations";
  version = "0.2.6";
  src = fetchPypi {
    inherit pname version;
    sha256 = "21f381ec52ed035670d1d923c2809e23684c1961ee8ce25af43ece786e93c06f";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Send notification once long running command is finished. Add duration PROMP_FIELD.";
    homepage = "https://github.com/jnoortheen/xontrib-cmd-durations";
    # license = licenses.MIT;
  };
}
