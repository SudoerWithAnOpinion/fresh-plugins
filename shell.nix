{ pkgs ? import <nixpkgs> {} }:
let 
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {};
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    unstable.fresh-editor
    python3
    (python3.withPackages (ps: with ps; [ jsonschema ]))
    terraform-ls
  ];
}