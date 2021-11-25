{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "hunter";
  version = "3.3.8";
  src = fetchPypi {
    inherit pname version;
    sha256 = "b5fcd01da7c8ddf299805d89cbbaa3ba379660335ea709550f01bf6b32b946f7";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "Hunter is a flexible code tracing toolkit.";
    homepage = "https://github.com/ionelmc/python-hunter";
    # license = licenses.BSD-2-Clause;
  };
}
