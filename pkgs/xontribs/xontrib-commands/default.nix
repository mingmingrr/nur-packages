{ lib, buildPythonPackage, fetchPypi, xonsh, arger, rich }:
buildPythonPackage rec {
  pname = "xontrib-commands";
  version = "0.3.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "87ebacb9084fee09aa466c8c518e64102e052afdedada293561cf90c61debd40";
  };
  propagatedBuildInputs = [ xonsh arger rich ];
  doCheck = false;
  meta = with lib; {
    description = "Useful xonsh-shell commands/alias functions";
    homepage = "https://github.com/jnoortheen/xontrib-commands";
    license = licenses.mit;
  };
}
