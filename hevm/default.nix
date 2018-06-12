{ mkDerivation, abstract-par, aeson, ansi-wl-pprint, async, base
, base16-bytestring, base64-bytestring, binary, brick, bytestring
, cereal, containers, cryptonite, data-dword, deepseq, directory
, ethjet, fgl, filepath, ghci-pretty, haskeline, here, HUnit, lens
, lens-aeson, megaparsec, memory, monad-par, mtl, multiset
, operational, optparse-generic, process, QuickCheck
, quickcheck-text, readline, regex-tdfa, restless-git, rosezipper
, s-cargot, scientific, stdenv, tasty, tasty-hunit
, tasty-quickcheck, temporary, text, text-format, time
, transformers, tree-view, unordered-containers, vector, vty, wreq
}:
mkDerivation {
  pname = "hevm";
  version = "0.15";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    abstract-par aeson ansi-wl-pprint base base16-bytestring
    base64-bytestring binary brick bytestring cereal containers
    cryptonite data-dword deepseq directory ethjet fgl filepath
    ghci-pretty haskeline lens lens-aeson megaparsec memory monad-par
    mtl multiset operational optparse-generic process QuickCheck
    quickcheck-text readline restless-git rosezipper s-cargot
    scientific temporary text text-format time transformers tree-view
    unordered-containers vector vty wreq
  ];
  executableHaskellDepends = [
    aeson ansi-wl-pprint async base base16-bytestring base64-bytestring
    binary brick bytestring containers cryptonite data-dword deepseq
    directory filepath ghci-pretty lens lens-aeson memory mtl
    optparse-generic process QuickCheck quickcheck-text readline
    regex-tdfa temporary text text-format unordered-containers vector
    vty
  ];
  testHaskellDepends = [
    base binary bytestring ghci-pretty here HUnit lens mtl QuickCheck
    tasty tasty-hunit tasty-quickcheck text vector
  ];
  homepage = "https://github.com/mbrock/hevm";
  description = "Ethereum virtual machine evaluator";
  license = stdenv.lib.licenses.agpl3;
}
