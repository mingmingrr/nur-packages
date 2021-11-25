{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-hist-format";
  version = "0.0.12";
  src = fetchPypi {
    inherit pname version;
    sha256 = "f808a318e1456bcc346b0109a1d1e45f4fe72c32637adede83e8879b9edc4eaa";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Format xonsh history to post it to Github or another page.";
    homepage = "https://github.com/anki-code/xontrib-hist-format";
    license = licenses.mit;
  };
}
