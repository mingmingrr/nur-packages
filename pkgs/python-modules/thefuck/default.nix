{ lib, buildPythonPackage, fetchPypi, psutil, colorama, six, decorator, pyte }:
buildPythonPackage rec {
  pname = "thefuck";
  version = "3.31";
  src = fetchPypi {
    inherit pname version;
    sha256 = "6e6083e6c94fe948fcb9c6083baee30ba4cf3f09ffd30cd9564d6473db271941";
  };
  propagatedBuildInputs = [ psutil colorama six decorator pyte ];
  doCheck = false;
  meta = with lib; {
    description = "Magnificent app which corrects your previous console command";
    homepage = "https://github.com/nvbn/thefuck";
    # license = licenses.MIT;
  };
}
