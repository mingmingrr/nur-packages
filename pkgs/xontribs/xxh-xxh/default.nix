{ lib, buildPythonPackage, fetchPypi, pexpect, pyyaml }:
buildPythonPackage rec {
  pname = "xxh-xxh";
  version = "0.8.7";
  src = fetchPypi {
    inherit pname version;
    sha256 = "3608144e2035b7d3a8a24873b3dd74ea1b4460892971e265506fd46274ad2973";
  };
  propagatedBuildInputs = [ pexpect pyyaml ];
  doCheck = false;
  meta = with lib; {
    description = "Bring your favorite shell wherever you go through the ssh";
    homepage = "https://github.com/xxh/xxh";
    license = licenses.bsd3;
  };
}
