module Funcoes where

import Text.Printf

leInt :: IO(Int)
leInt = do readLn

leCord :: IO(Int, Int)
leCord = do 
  putStr "Use esse modelo (larg, alt), para informar a primeira coordenada da imagem: "
  readLn

-- Reaproveitadas dos arquivos SVG

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style