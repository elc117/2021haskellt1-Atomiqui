import Text.Printf
import Funcoes

main :: IO ()
main = do
  -- Recebe os dados básicos da imagem --

  putStrLn "Informe a largura maxima da imagem: "
  x <- leFloat

  putStrLn "Informe a altura maxima da imagem: "
  y <- leFloat

  putStrLn "Informe um raio: "
  r <- leInt

  putStrLn "Informe um valor aleatorio: "
  n <- leInt
  
  -- Define o ponto inicial, como sendo 10% de x e y --
  -- Contatena inicio ++ lista de circulos ++ fim --
  let px = tenPercent x
      py = tenPercent y
      arquivo = concat ([svgBegin x y] ++ (lstCirc n px py r) ++ [svgEnd])
   in writeFile "img.svg" arquivo