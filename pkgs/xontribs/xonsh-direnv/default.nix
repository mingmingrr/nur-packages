{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-direnv";
  version = "1.5.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "38b8ed183da55f861fdda1ebc425a601b48f6677fc3ae56b06ed1515bb276b56";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "direnv support for the xonsh shell";
    homepage = "https://github.com/74th/xonsh-direnv";
    license = licenses.mit;
  };
}
