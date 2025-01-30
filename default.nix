{
  # Some documentation https://ryantm.github.io/nixpkgs/stdenv/stdenv/
  stdenv,
  raylib,
  ...
}:
stdenv.mkDerivation {
  pname = "myPackage";
  version = "v0.0.1";

  src = ./src;

  buildInputs = [raylib];

  buildPhase = ''
    gcc -c main.c
    gcc main.o -o main
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv main $out/bin/myPackage
  '';
}
