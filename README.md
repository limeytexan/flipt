# flipt

Mock package repository reproducing part of a customer build graph for
FloxHub Factory demonstrations. Each package sleeps for a fixed number of
seconds and writes its name and the store paths of its catalog inputs.

| package | build time | catalog inputs |
|---|---|---|
| `flipt` | 3 s | `python3Packages.flox-odin`, `python3Packages.flox-pigeon-client`, `python3Packages.gimme` |
