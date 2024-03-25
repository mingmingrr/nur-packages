{ lib, buildPythonPackage, fetchPypi, astropy, astroquery, jplephem, matplotlib, numba, numpy, pandas, plotly, pyerfa, scipy }:
buildPythonPackage rec {
  pname = "poliastro";
  version = "0.17.0";
  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-AsdtF9+TZTiBY91rOVgdwqwa2/LMtYgt6dYk45W/Onw=";
  };
  propagatedBuildInputs = [
    astropy
    astroquery
    jplephem
    matplotlib
    numba
    numpy
    pandas
    plotly
    pyerfa
    scipy
  ];
  doCheck = false;
}
