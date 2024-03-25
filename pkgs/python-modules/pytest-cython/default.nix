{ lib
, buildPythonPackage
, fetchPypi
, pytest
, cython
, pytestCheckHook
}:
buildPythonPackage rec {
  pname = "pytest-cython";
  version = "0.2.1";
  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-ONEPrub8l0qSQNzPn4XcJTS69r5uAqP8d6nbi2pbBVg=";
  };
  buildInputs = [ pytest ];
  propagatedBuildInputs = [ cython ];
  nativeCheckInputs = [ pytestCheckHook ];
  doCheck = false;
  meta = with lib; {
    description = "doctesting of C extension modules created through cython.";
    homepage = "https://github.com/lgpage/pytest-cython";
    # license = licenses.MIT;
  };
}
