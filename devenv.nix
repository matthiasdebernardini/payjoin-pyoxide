{ pkgs, lib, ... }:

{
# https://devenv.sh/basics/
	env.GREET = "devenv";
# https://devenv.sh/packages/
	packages = [ pkgs.git
		pkgs.jq
		pkgs.rust-petname
                pkgs.helix
		pkgs.httpie
		pkgs.bitcoind
		pkgs.yarn
		pkgs.curl
		pkgs.fzf
		pkgs.just
		pkgs.openssl ]
		++ # array concatenation operator
		lib.optionals pkgs.stdenv.isDarwin (with pkgs.darwin.apple_sdk; [
				frameworks.CoreFoundation
				frameworks.Security
				frameworks.SystemConfiguration
		]);

# https://devenv.sh/scripts/
	scripts.cch.exec = "RUST_LOG=info cargo run";

	enterShell = ''
    echo "cargo"
		cargo --version
    echo "python"
		python --version
		'';

# https://devenv.sh/languages/
	languages.nix.enable = true;
	languages.python.enable = true;
	languages.python.venv.enable = true;
	languages.rust = {
		enable = true;
# https://devenv.sh/reference/options/#languagesrustversion
		version = "latest";
	};


# https://devenv.sh/processes/
# See full reference at https://devenv.sh/reference/options/
}