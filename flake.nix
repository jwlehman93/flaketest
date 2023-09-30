{
  description = "A very basic flake";
  inputs.nixpkgs.url =
    "github:nixos/nixpkgs/313dcfae7e6a0c11f305ba066c83d25c78744333";

  outputs = { self, nixpkgs }:
    let pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      packages.x86_64-linux.default = pkgs.runCommand "hm" { } ''
        whoami
      '';
    };
}
