{ lib, buildPythonPackage, fetchPypi, colorama }:
buildPythonPackage rec {
  pname = "backtrace";
  version = "0.2.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "723ddc4c988c221a2d02455e51e8a07fe6245ded6b9e810c0ade429624b177f7";
  };
  propagatedBuildInputs = [ colorama ];
  doCheck = false;
  meta = with lib; {
    description = "Makes tracebacks humanly readable";
    homepage = "https://github.com/nir0s/backtrace";
    # license = licenses.LICENSE;
  };
}
