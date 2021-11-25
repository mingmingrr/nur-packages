{ lib, buildPythonPackage, fetchPypi, psycopg2, graphviz, tabulate }:
buildPythonPackage rec {
  pname = "xontrib-xpg";
  version = "0.1.2";
  src = fetchPypi {
    inherit pname version;
    sha256 = "f3ff5e54189445aeb5f2d984fb08486d02ba2347946ebbc28ab082870a9bb568";
  };
  propagatedBuildInputs = [ psycopg2 graphviz tabulate ];
  doCheck = false;
  meta = with lib; {
    description = "xonsh python for pg";
    homepage = "https://github.com/fengttt/xsh/py/xpg";
    # license = licenses.;
  };
}
