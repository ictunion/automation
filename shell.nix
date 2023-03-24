{ pkgs ? import <nixpkgs> {} }:
with pkgs;
mkShell {
  name = "ictunion-automation-shell";
  buildInputs = [ github-cli ];
}
