module Main (main) where

import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Cairo

main :: IO ()
main = toFile def "3X-control.png" $ do
  layout_title .= "Control Integrated Over 3X Period"
  setColors [opaque blue, opaque red, opaque green, opaque green, opaque green]
  plot (line "1X"    [[ (x :: Double, sin x)       | x <- [0,0.01 .. 3 * pi] ]])
  plot (line "3X"    [[ (x :: Double, sin $ x / 3) | x <- [0,0.01 .. 3 * pi] ]])
  plot (line "Integral 3X 1 (positive effect)" [[ (x :: Double, -3 * cos (x / 3) + 3.0) | x <- [0, 0.01 .. pi] ]])
  plot (line "Integral 3X 2 (negative effect)" [[ (x :: Double,  3 * cos (x / 3) - 0.0) | x <- [pi, pi + 0.01 ..  2 * pi] ]])
  plot (line "Integral 3X 3 (positive effect)" [[ (x :: Double, -3 * cos (x / 3) - 3.0) | x <- [2 * pi, 2 * pi + 0.01 .. 3 * pi] ]])

