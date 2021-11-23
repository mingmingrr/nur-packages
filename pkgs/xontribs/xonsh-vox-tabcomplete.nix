{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xonsh-vox-tabcomplete";
  version = "0.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "9701b198180f167071234e77eab87b7befa97c1873b088d0b3fbbe6d6d8dcaad";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "vox tabcomplete support for the Xonsh shell";
    homepage = "https://github.com/Granitosaurus/xonsh-vox-tabcomplete";
    # license = licenses.MIT;
  };
}
