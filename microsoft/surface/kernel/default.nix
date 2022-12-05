{ config, lib, pkgs, ... }:

let
  inherit (lib) mkOption types;

in {
  imports = [
    ./linux-5.19.17
  ];

  options.microsoft-surface.kernelVersion = mkOption {
    description = "Kernel Version to use (patched for MS Surface)";
    type = types.enum [ ];
  };
}
