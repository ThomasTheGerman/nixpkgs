{ build-idris-package
, fetchFromGitHub
, prelude
, base
, lib
, idris
}:
build-idris-package  {
  name = "vdom";
  version = "0.6.0";

  idrisDeps = [ prelude base ];

  src = fetchFromGitHub {
    owner = "brandondyck";
    repo = "idris-vdom";
    rev = "ff32c14feeac937f7418830a9a3463cd9582be8a";
    sha256 = "0aila1qdpmhrp556dzaxk7yn7vgkwcnbp9jhw8f8pl51xs3s2kvf";
  };

  meta = {
    description = "Virtual DOM in pure Idris";
    homepage = https://github.com/brandondyck/idris-vdom;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.brainrape ];
    inherit (idris.meta) platforms;
  };
}
