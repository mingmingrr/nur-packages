{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontib-kitty";
  version = "0.0.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "3cb697a67073d66a73405c9eae031f358a483e958eb554f6e397a3009e91d7f5";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Xonsh hooks for the Kitty terminal emulator";
    homepage = "https://github.com/scopatz/xontrib-kitty";
    # license = licenses.BSD-2-Clause;
  };
}
