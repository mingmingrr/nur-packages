{ lib, buildPythonPackage, fetchPypi, xonsh }:
buildPythonPackage rec {
  pname = "xontrib-syslog-shell-profiler";
  version = "0.1.5";
  src = fetchPypi {
    inherit pname version;
    sha256 = "b790985568f848553172ec87c270a672f417cfed748738e5b193b6f64b03bfec";
  };
  propagatedBuildInputs = [ xonsh ];
  doCheck = false;
  meta = with lib; {
    description = "A Xonsh plugin to profile and log command execution to a syslog file.";
    homepage = "https://github.com/grg121/xontrib-syslog-shell-profiler";
    license = licenses.mit;
  };
}
