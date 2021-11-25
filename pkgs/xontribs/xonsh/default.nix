{ lib, buildPythonPackage, fetchPypi
, python
, enableFull ? true
, distro
, prompt-toolkit
, pygments
, pyperclip
}:

buildPythonPackage rec {
  pname = "xonsh";
  version = "0.11.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0d9c3d9a4e8b8199ae697fbc9d1e0ae55085cdbdd4306d04813350996f9c15dc";
  };

  propagatedBuildInputs = lib.optionals enableFull
    [ distro prompt-toolkit pygments pyperclip ];

  postPatch = ''
    find scripts -name 'xonsh*' -exec sed -i -e "s|env -S|env|" {} \;
    patchShebangs .
    substituteInPlace scripts/xon.sh \
      --replace 'python' "${python}/bin/python"
  '';

  makeWrapperArgs = [
    "--prefix PYTHONPATH : ${placeholder "out"}/lib/${python.libPrefix}/site-packages"
  ];

  postInstall = ''
    wrapProgram $out/bin/xon.sh $makeWrapperArgs
  '';

  passthru = {
    shellPath = "/bin/xonsh";
  };

  doCheck = false;

  meta = with lib; {
    description = "Python-powered, cross-platform, Unix-gazing shell";
    homepage = "https://xon.sh";
    license = licenses.bsd3;
  };
}
