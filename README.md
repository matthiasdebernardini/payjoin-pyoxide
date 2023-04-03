# payjoin-pyoxide
python bindings for payjoin, enables bip78 compliance in your python apps


## install dev platform nix via determinate systems and devenv

- `$ curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`
- `$ nix-env -iA cachix -f https://cachix.org/api/v1/install`
- `$ echo "trusted-users = root ubuntu" | sudo tee -a /etc/nix/nix.conf && sudo pkill nix-daemon`
- `$ cachix use devenv`
- `$ nix-env -if https://github.com/cachix/devenv/tarball/latest`
- `$ git clone https://github.com/AnchorWatch-Trident/trident-api-oxide.git`
- `$ cd trident-api-oxide`
- `$ devenv shell`
