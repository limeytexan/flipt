{ runCommand, catalogs }:
let
  dep_python3Packages_flox_odin = catalogs.brantley.python3Packages.flox-odin;
  dep_python3Packages_flox_pigeon_client = catalogs.brantley.python3Packages.flox-pigeon-client;
  dep_python3Packages_gimme = catalogs.brantley.python3Packages.gimme;
in
runCommand "flipt-1" { pname = "flipt"; version = "1"; inputs = [ dep_python3Packages_flox_odin dep_python3Packages_flox_pigeon_client dep_python3Packages_gimme ]; } ''
  sleep 3
  mkdir -p "$out/share"
  printf '%s\n' "flipt" > "$out/share/name"
  for i in $inputs; do printf '%s\n' "$i"; done > "$out/share/inputs"
''
