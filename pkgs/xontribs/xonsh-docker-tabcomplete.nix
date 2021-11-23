{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-docker-tabcomplete";
  version = "0.1.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "19329b4b7e68ac82abcb8b18ae0975cf6394571173ebdb19bd4c33975b298a57";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "docker tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/xsteadfastx/xonsh-docker-tabcomplete";
    # license = licenses.MIT;
  };
}
