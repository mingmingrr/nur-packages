{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-ergopack";
  version = "0.1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "003aba517e04622178ce572ef09e47f2ba38434b0c581ad4f6a315713bd19fbe";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Meta package that installs group of ergonomic xontribs in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-ergopack";
    # license = licenses.MIT;
  };
}
