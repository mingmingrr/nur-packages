{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-fzf-widgets";
  version = "0.0.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "12978eafd7371f015d17cb4ca5490536eedcae6c6a6cbd558d4839c13ccdcd49";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "fzf widgets for xonsh";
    homepage = "https://github.com/laloch/xontrib-fzf-widgets";
    license = licenses.gpl3;
  };
}
