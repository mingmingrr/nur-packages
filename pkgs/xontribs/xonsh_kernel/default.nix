{ lib, buildPythonPackage, fetchPypi, metakernel, xonsh }:
buildPythonPackage rec {
  pname = "xonsh_kernel";
  version = "0.4.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "d85f1cbd6976b1fae652ac09483b955f2a148c1a11acb0a5e25c19d3c0456b2f";
  };
  propagatedBuildInputs = [ metakernel xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "An Xonsh kernel for Jupyter";
    homepage = "https://github.com/calysto/xonsh_kernel";
    # license = licenses.None;
  };
}
