{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-scrapy-tabcomplete";
  version = "0.25";
  src = fetchPypi {
    inherit pname version;
    sha256 = "0c23e7947b8b72205b486df8990e13a678aeb67aa794f04b8c850fe010c2c9ea";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "scrapy tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/Granitas/xonsh-scrapy-tabcomplete";
    license = licenses.gpl3;
  };
}
