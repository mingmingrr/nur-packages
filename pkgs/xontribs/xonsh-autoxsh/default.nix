{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-autoxsh";
  version = "0.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "ab05db35b439980c2467837e86dbf426ec366b7345ea9bf45e9a252c841f21ee";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Auto launcher of `.autoxsh` scripts for Xonsh shell's `cd` function";
    homepage = "https://github.com/Granitas/xonsh-autoxsh";
    license = licenses.gpl3;
  };
}
