{ lib, buildPythonPackage, fetchPypi
, xontrib-argcomplete
, xontrib-back2dir
, xontrib-output-search
, xontrib-pipeliner
, xontrib-sh
, xonsh-autoxsh
, xontrib-history-encrypt
, enableDev ? true
, xontrib-hist-format        # extra == 'dev'
, xontrib-readable-traceback # extra == 'dev'
, hunter                     # extra == 'dev'
, enableOnepath ? true
, xontrib-onepath            # extra == 'onepath'
, enablePrompt ? true
, xontrib-prompt-bar         # extra == 'prompt'
, xontrib-prompt-starship    # extra == 'prompt'
}:

buildPythonPackage rec {
  pname = "xontrib-ergopack";
  version = "0.1.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "003aba517e04622178ce572ef09e47f2ba38434b0c581ad4f6a315713bd19fbe";
  };
  propagatedBuildInputs = [
    xontrib-argcomplete
    xontrib-back2dir
    xontrib-output-search
    xontrib-pipeliner
    xontrib-sh
    xonsh-autoxsh
    xontrib-history-encrypt
  ] ++ lib.optionals enableDev [
    xontrib-hist-format
    xontrib-readable-traceback
    hunter
  ] ++ lib.optionals enableOnepath [
    xontrib-onepath
  ] ++ lib.optionals enablePrompt [
    xontrib-prompt-bar
    xontrib-prompt-starship
  ];
  doCheck = false;
  meta = with lib; {
    description = "Meta package that installs group of ergonomic xontribs in xonsh shell.";
    homepage = "https://github.com/anki-code/xontrib-ergopack";
    license = licenses.mit;
  };
}
