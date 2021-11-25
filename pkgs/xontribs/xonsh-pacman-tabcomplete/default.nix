{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-pacman-tabcomplete";
  version = "0.1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "52c8c9501887ebf8abaee787c49f2ada04079ed6847c56b957c60e0097dda570";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "pacman tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/gforsyth/xonsh-pacman-tabcomplete";
    license = licenses.mit;
  };
}
