module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff as Aff
import Test.Spec as Spec
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)

main :: Effect Unit
main = Aff.launchAff_ do
  runSpec [ consoleReporter ] do
    Spec.describe "A" do
      Spec.it "A:1" (pure unit)
    Spec.describe "B" do
      Spec.it "B:1" (pure unit)

