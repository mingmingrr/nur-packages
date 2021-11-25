{ lib, buildPythonPackage, fetchPypi, xonsh, tomlkit }:
buildPythonPackage rec {
  pname = "xontrib-avox-poetry";
  version = "0.2.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "ed262f3505a342c65545d9afabc61784eefa2df934be99ed634e7109277f612f";
  };
  propagatedBuildInputs = [ xonsh tomlkit ];
  doCheck = false;
  meta = with lib; {
    description = "auto-activate venv as one cd into a poetry project";
    homepage = "https://github.com/jnoortheen/xontrib-avox-poetry";
    license = licenses.mit;
  };
}
