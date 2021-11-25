{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-default-command";
  version = "0.0.3";
  src = fetchPypi {
    inherit pname version;
    sha256 = "eaa68470c4f5550576cdc871b34bcdb8a4153be2466beeb8f5f9c13f28f632cb";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Run a default command when you press return on an empty command line.";
    homepage = "https://github.com/oh-my-xonsh/xontrib-default-command";
    license = licenses.mit;
  };
}
