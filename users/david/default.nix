{
  imports = [ ../../profiles/graphical ];

  home-manager.users.nixos = {
    imports = [ ../profiles/git ../profiles/direnv ];
  };

  users.users.david = {
    uid = 1000;
    password = "nixos";
    description = "default";
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
