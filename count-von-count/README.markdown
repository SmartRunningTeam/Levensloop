# count-von-count

## Dependencies

* [Haskell Platform](http://hackage.haskell.org/platform/)

  Run `cabal update` after installation to fetch the lastest package
  information, afterwards run `cabal sandbox init` and `cabal install
  --only-dependencies` from the count-von-count folder to install all
  Haskell dependencies.

## Usage

To build the application run `cabal configure` and `cabal build` from the
count-von-count folder. The executable is now available as
`dist/build/count-von-count/count-von-count`.

Developing the application:

1. Run `ghci` from the project folder
2. Load the main source file: `:l src/CountVonCount/Main.hs`
3. Enter `main` to start the program, `^C` to interrupt
4. Enter `:r` to reload all changed modules

Testing the application:

1. Install the test framework, using `cabal install test-framework-hunit`
2. Execute `runghc -isrc -itests tests/CountVonCount/TestSuite.hs`

Running files in the `scripts/` directory when using a sandbox:

1. Run `cabal repl` from the project folder
2. Load the scripts (for instance `scripts/teams2015`) with `:l
   scripts/teams2015.hs`
3. Run the script with `main`

## Other tools

* count-von-count-simulation
* count-von-count-replayer
