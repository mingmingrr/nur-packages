{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-kitty";
  version = "0.0.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "3280329502dd65df5368a0deee735808de2fcaa9680281df0ab0512863c9caba";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Xonsh hooks for the Kitty terminal emulator";
    homepage = "https://github.com/scopatz/xontrib-kitty";
    # license = licenses.BSD-2-Clause;
  };
}
