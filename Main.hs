import Text.Printf
import Funcoes

lstCirc :: Int -> Int -> Int -> Int -> [String]
lstCirc n x y r = [svgCircle (x+w) (y+w) r (geraCor r (w*2)) | w <- [(x-y+r), (x-y+r)+3..(x-y+r)+(3*n)]]

main :: IO ()
main = do
  --putStrLn "Informe a largura maxima da imagem: "
  --x <- leFloat

  --putStrLn "Informe a altura maxima da imagem: "
  --y <- leFloat

  putStrLn "Informe a coordenada central do circulo, neste formato: (x, y)."
  cordxy <- leCord

  putStrLn "Informe um raio qualquer: "
  r <- leInt

  putStrLn "Informe quantos circulos deseja usar: "
  n <- leInt
  
  let (px, py) = verifica 500 500 cordxy
  let arquivo = concat ([svgBegin 500 500] ++ (lstCirc n px py r) ++ [svgEnd])
   in writeFile "img.svg" arquivo

--[(svgCircle (n^2) (n*2) r (geraCor n r)), (svgCircle (n^2) (n*2) r (geraCor n r))]
--