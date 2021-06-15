module Funcoes where

import Text.Printf

leFloat :: IO(Float)
leFloat = do 
  f <- readLn
  return f

leInt :: IO(Int)
leInt = do 
  i <- readLn
  return i

leCord :: IO(Int, Int)
leCord = do
  readLn

--Verifica se o ponto passado está dentro do tamanho da imagem e corrige
verifica :: Float -> Float -> (Int, Int) -> (Int, Int)
verifica 0 0 (px, py) = (0, 0)
verifica x y (px, py)
  | px > floor x && py > floor y = (floor x, floor y)
  | px > floor x && py <= floor y = (floor x, py)
  | px <= floor x && py > floor y = (px, floor y)
  | otherwise = (px, py)

--Gera uma cor aleatória para o circulo
geraCor :: Int -> Int -> String
geraCor x y = (\x -> "rgb" ++ show x) (x, y, x+y, 1)


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