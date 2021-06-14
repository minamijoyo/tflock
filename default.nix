with import <nixpkgs> {};

buildGoModule rec {
  pname = "tflock";
  version = "0.3.0";

  src = ./.;

  vendorSha256 = "15jfprhj679j2jgnwzk5ifb0f3pdw1vdfp1zyqcjnwgjqs96lvf9";
}
