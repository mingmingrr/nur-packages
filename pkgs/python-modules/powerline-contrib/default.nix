{ lib
, buildPythonPackage
, fetchFromGitHub
, powerline
}:

buildPythonPackage rec {
  pname = "powerline-contrib";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "mingmingrr";
    repo = pname;
    rev = "3a5b3a4fcecc266fabb03221119030e0e3e5aba2";
    sha256 = "0gaain97k1ira759mz6mdczffll2w72iavx4y79yk5x5fp1crr2a";
  };

  propagatedBuildInputs = [
    powerline
  ];

  meta = with lib; {
    description = "Extra segments for powerline";
    homepage = https://github.com/mingmingrr/powerline-contrib;
    license = licenses.mit;
  };
}
