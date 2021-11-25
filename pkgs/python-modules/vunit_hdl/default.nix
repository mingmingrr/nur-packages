{ lib, buildPythonPackage, fetchPypi, colorama }:

buildPythonPackage rec {
  pname = "vunit_hdl";
  version = "4.5.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1ps8m0s3gmf933ng5pc4zqnvwf9kjsbdrr55cbwg95b3pmhrrypp";
  };

  propagatedBuildInputs = [ colorama ];

  doCheck = false;

  meta = with lib; {
    description = "Unit testing framework for VHDL/SystemVerilog";
    homepage = "https://github.com/VUnit/vunit";
    license = licenses.mpl20;
  };
}
