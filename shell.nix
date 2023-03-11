with (import <nixpkgs> {});
let
  my-python-packages = p: with p; [
    numpy
    matplotlib
    graphviz
    # other python packages
  ];
  my-python = pkgs.python3.withPackages my-python-packages;
in 
mkShell {
    buildInputs = [
        my-python
        graphviz
    ];
}

