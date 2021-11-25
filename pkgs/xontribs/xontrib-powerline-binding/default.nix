{ lib, buildPythonPackage, fetchPypi, powerline }:
buildPythonPackage rec {
  pname = "xontrib-powerline-binding";
  version = "0.3.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "392ddda92eec2b8d506df86473cfc246b53e407b7c904d534c0d25a0bd72bfa7";
  };
  patches = [ ./client_id.patch ];
  propagatedBuildInputs = [ powerline ];
  doCheck = false;
  meta = with lib; {
    description = "Powerline binding for xonsh";
    homepage = "https://github.com/dyuri/xontrib-powerline-binding";
    license = licenses.mit;
  };
}
