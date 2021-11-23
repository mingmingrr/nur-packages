{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-sh";
  version = "0.3.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "795fbe66ea299c0ccd5d1b9a7d75d933bb6671acb534b04807f53e495ad057e5";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Paste and run commands from bash, zsh, fish, tcsh, pwsh, cmd in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-sh";
    # license = licenses.BSD;
  };
}
