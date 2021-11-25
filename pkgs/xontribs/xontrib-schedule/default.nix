{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-schedule";
  version = "0.0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "7331025bccefd77dfa8272ad5fb3222cf47277bac92aed33ab5f7ec0c228a5ae";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Xonsh Task Scheduling";
    homepage = "https://github.com/astronouth7303/xontrib-schedule";
    license = licenses.mit;
  };
}
