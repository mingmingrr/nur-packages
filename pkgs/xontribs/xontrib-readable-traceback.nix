{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-readable-traceback";
  version = "0.3.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "d43feeca2037035767f483da9238a085c9194f9232d9638cae80642cca7f1593";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Traceback easier to see for xonsh.";
    homepage = "https://github.com/6syun9/xontrib-readable-traceback";
    # license = licenses.MIT;
  };
}
