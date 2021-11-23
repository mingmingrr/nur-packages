{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-click-tabcomplete";
  version = "0.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "038efaca2d46e0668fee112d10b627857e5273efc8b2077f85fd6fff880d3dec";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "click tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/Granitosaurus/click-vox-tabcomplete";
    # license = licenses.GPLv3;
  };
}
