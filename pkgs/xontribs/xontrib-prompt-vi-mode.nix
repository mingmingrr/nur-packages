{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-prompt-vi-mode";
  version = "0.1.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "0658ff8c3fe7c51c4e7113ab4f71295427c2e037a5e76b557292db895d92d04c";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "vi-mode status formatter for xonsh prompt";
    homepage = "https://github.com/t184256/xontrib-prompt-vi-mode";
    # license = licenses.MIT;
  };
}
