import {
  rule,
  writeToProfile,
  to$,
  withModifier,
  // layer,
  // map,
  // NumberKeyValue,
  // withMapper,
} from 'karabiner.ts'

// ! Change '--dry-run' to your Karabiner-Elements Profile name.
// (--dry-run print the config json into console)
// + Create a new profile if needed.
writeToProfile('default', [
  // It is not required, but recommended to put symbol alias to layers,
  // (If you type fast, use simlayer instead, see https://evan-liu.github.io/karabiner.ts/rules/simlayer)
  // to make it easier to write '←' instead of 'left_arrow'.
  // Supported alias: https://github.com/evan-liu/karabiner.ts/blob/main/src/utils/key-alias.ts

  // layer('/', 'symbol-mode').manipulators([
  //   //     / + [ 1    2    3    4    5 ] =>
  //   withMapper(['⌘', '⌥', '⌃', '⇧', '⇪'])((k, i) =>
  //     map((i + 1) as NumberKeyValue).toPaste(k),
  //   ),
  //   withMapper(['←', '→', '↑', '↓', '␣', '⏎', '⇥', '⎋', '⌫', '⌦', '⇪'])((k) =>
  //     map(k).toPaste(k),
  //   ),
  // ]),

  rule('Launch Apps').manipulators([
    withModifier('⌘')({
      b: to$('open -na Firefox'),
      d: to$('open -na WezTerm'),
    }),
  ]),
]);
