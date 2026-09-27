{
  description = "Typst Flake.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-26.05";
  };

  outputs = {self, nixpkgs}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system} = {
      typst = pkgs.mkShell{
        name = "typst";

        nativeBuildInputs = with pkgs; [
        typst
        ];
      };
    };
  };

}
