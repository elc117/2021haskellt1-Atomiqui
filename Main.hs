import Text.Printf
import Funcoes

main :: IO ()
main = do
  --putStrLn "Informe a largura maxima da imagem: "
  

  --putStrLn "Informe a altura maxima da imagem: "
  

  putStrLn "Informe um raio: "
  r <- leInt

  writeFile "img.svg" (arquivo)
  where arquivo = svgBegin (leInt) (leInt) ++ (svgCircle 120 50 50 "rgb(105, 14, 30, 0.3)") ++ svgEnd