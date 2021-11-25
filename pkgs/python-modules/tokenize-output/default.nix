{ lib, buildPythonPackage, fetchPypi, demjson }:
buildPythonPackage rec {
  pname = "tokenize-output";
  version = "0.4.4";
  src = fetchPypi {
    inherit pname version;
    sha256 = "f074406fe781dfd1fed36ac757ffeda71b3473a8b08abb71b7870a50c4d27d26";
  };
  propagatedBuildInputs = [ demjson ];
  doCheck = false;
  meta = with lib; {
    description = "Get identifiers, names, paths, URLs and words from the command output.";
    homepage = "https://github.com/tokenizer/tokenize-output";
    # license = licenses.BSD;
  };
}
