{
  # https://www.youtube.com/watch?v=FFuBCgsLPlw
  description = "Example C package";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-24.11";
    };
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages.${system} = {
      myPackage = pkgs.callPackage ./. {};
      default = self.packages.${system}.myPackage;
    };
  };
}
