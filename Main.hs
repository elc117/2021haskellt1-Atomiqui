import Text.Printf
import Funcoes

main :: IO ()
main = do
  putStrLn "Informe a largura maxima da imagem: "
  x <- leFloat

  putStrLn "Informe a altura maxima da imagem: "
  y <- leFloat

  putStrLn "Informe um raio: "
  r <- leInt

  putStrLn "Informe um valor aleatorio: "
  n <- leInt
  
  let px = tenPercent x
      py = tenPercent y
  let arquivo = concat ([svgBegin x y] ++ (lstCirc n px py r) ++ [svgEnd])
   in writeFile "img.svg" arquivo