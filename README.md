# README

This code was made following a small tutorial from https://www.youtube.com/watch?v=FFuBCgsLPlw

To build the flake:

```sh
nix build
```

After the flake is built, to run the default binary:

```sh
nix run
```

I came to know about 2 phases: build and install.

It seems there are some default configuration for each phase.

To configure it myself, I can use:

```nix
buildPhase = ''
  bash commands here to run during install phase
'';
```

Similar to above exists for `installPhase`.

If I need to use some tool that isn't available, I can make it available like this:

```nix
buildInputs = [bat];
```

Now `bat` will be available for me to use in the `buildPhase`.

