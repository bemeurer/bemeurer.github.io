with import <nixpkgs> {};

mkShell {
  name = "null-exception";
  buildInputs = [
    git-lfs
    hugo
    mdl
    proselint
  ];

}
