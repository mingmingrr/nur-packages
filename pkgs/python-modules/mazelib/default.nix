{ lib, buildPythonPackage, fetchPypi, numpy, cython }:

buildPythonPackage rec {
  pname = "mazelib";
  version = "0.9.13";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-4Wy1GyMN0fGYAf4sXJEQ2aS3udl0QQojCqsuR4GV9rA=";
  };

  preConfigure = ''
    sed -i setup.py \
      -e 's/install_requires=.*/install_requires=["cython","numpy"],/g' \
      -e 's/setup_requires=.*/setup_requires=["numpy"],/g'
  '';
  propagatedBuildInputs = [ numpy cython ];

  doCheck = false;
}
