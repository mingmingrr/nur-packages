{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "python-magic";
  version = "0.4.24";
  src = fetchPypi {
    inherit pname version;
    sha256 = "de800df9fb50f8ec5974761054a708af6e4246b03b4bdaee993f948947b0ebcf";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "File type identification using libmagic";
    homepage = "http://github.com/ahupp/python-magic";
    # license = licenses.MIT;
  };
}
