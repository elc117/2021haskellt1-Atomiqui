module Funcoes where

import Text.Printf
-- Funções de leitura de dados --
leFloat :: IO(Float)
leFloat = do 
  f <- readLn
  return f

leInt :: IO(Int)
leInt = do 
  i <- readLn
  return i

-- Retorna em int, 10% do valor de um float --
tenPercent :: Float -> Int
tenPercent x = floor (0.1*x)

-- Gera um lista de circulos a partir do uso da função "svgCircle", que recebe os valores rgb da função "geraCor" --
-- Ambas aproveitam a variação dentro da lista "w" para variar posição/cor --
lstCirc :: Int -> Int -> Int -> Int -> [String]
lstCirc n x y r = [svgCircle (x+w) (y+w) r (geraCor (w+x-n) (w+y-r)) | w <- [r, r+7..r+7*n]]

-- Gera uma cor 'aleatória' para um circulo, de acordo com a variação dos valores que são passados --
geraCor :: Int -> Int -> String
geraCor x y
  | x < y = (\x -> "rgb" ++ show x) (y-x, x*2, 2*(x-y)+y)
  | x > y = (\x -> "rgb" ++ show x) (2*(x-y)+y, x*2, y-x)
  | x == y = (\x -> "rgb" ++ show x) (x, y-x, x*2)

-- Reaproveitadas dos seus arquivos SVG
-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style