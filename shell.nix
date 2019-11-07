with import <nixpkgs> {};

mkShell {
  name = "null-exception";
  buildInputs = [
    hugo
    mdl
    proselint
  ];

}
