{ lib, buildPythonPackage, fetchPypi, typing-extensions }:
buildPythonPackage rec {
  pname = "arger";
  version = "1.4.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "45c7ae98a44d78a8cefeca2447898fa78338eae40d52285d64ad98f3c6171b1c";
  };
  propagatedBuildInputs = [ typing-extensions ];
  doCheck = false;
  meta = with lib; {
    description = "Create argparser automatically from functions";
    homepage = "https://pypi.org/project/arger";
    # license = licenses.MIT;
  };
}
