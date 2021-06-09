import Text.Printf
import Funcoes

main :: IO ()
main = do
  let (w,h) = (900,500) --Usuário digita isso
      nrects = 360 --Usuário tbm

      svgDados = svgBegin w h ++ svgimg ++ svgEnd
   in writeFile "img.svg" $ svgDados