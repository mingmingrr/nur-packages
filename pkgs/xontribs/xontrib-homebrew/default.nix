{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-homebrew";
  version = "0.1.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "cba2aaa2806ea7e546eac9195a9ea219b41f2cc93df7f6a0a07d646322f0adc4";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "Add Homebrew's shell environment to xonsh on macOS/Linux";
    homepage = "https://github.com/eugenesvk/xontrib-homebrew";
    license = licenses.mit;
  };
}
