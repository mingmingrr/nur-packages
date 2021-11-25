{ lib, buildPythonPackage, fetchPypi }:
buildPythonPackage rec {
  pname = "xontrib-ssh-agent";
  version = "1.0.12";
  src = fetchPypi {
    inherit pname version;
    sha256 = "6834b3df866b311d271fd307dc2146da3eb376d1d572dad6a86998bfa41f0497";
  };
  propagatedBuildInputs = [ ];
  doCheck = false;
  meta = with lib; {
    description = "SSH agent integration for xonsh";
    homepage = "https://github.com/dyuri/xontrib-ssh-agent";
    license = licenses.mit;
  };
}
