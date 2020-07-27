import Text.Printf

main = do
        raio <- readLn :: IO Double
        let area = (3.14159 * (raio ^2))
        printf "A = %.4f\n" area

maior :: Int -> Int -> Int -> Int
maior a b c | a > b && a > c = a 
            | b > a && b > c = b
            | c > a && c > b = c
            | otherwise = c


distancia = do
        x1 <- readLn :: IO Double
        y1 <- readLn :: IO Double
        x2 <- readLn :: IO Double
        y2 <- readLn :: IO Double
        let aux1 = x2-x1
        let aux2 = y2-y1
        let dist = sqrt((aux1 ^ 2) + (aux2 ^ 2))
        printf "Distancia = %.4f\n" dist



{-
aluno = do
        nota1 <- readLn :: IO Double
        nota2 <- readLn :: IO Double
        nota3 <- readLn :: IO Double
        nota4 <- readLn :: IO Double
        let media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 4) + nota4 ) / 10
        if media >= 7.0 then
                printf "Media = %.4f\n" media
                printf "Aluno Aprovado\n"
        else if media < 5.0 then
                printf "Media = %.4f\n" media
                printf "Aluno Reprovado\n"
        else do
                printf "Media = %.4f\n" media
                printf "Ficou de RERE burro\n"
                nfinal <- readLn :: IO Double
                printf "Nota da rere = %.4f\n" nfinal

                let mediaFinal = (media+nfinal) / 2

                if mediaFinal >= 5.0 then
                        printf "Aluno aprovado\n"
                        printf "Media final = %.4f\n" mediaFinal
                else
                        printf "Aluno reprovado\n"
                        printf "Media final = %.4f\n" mediaFinal
        
-}

quadrante = do
        x <- readLn :: IO Double
        y <- readLn :: IO Double
        if x == 0 && y == 0 then
                printf "Origem\n"
        else if x > 0 && y > 0 then 
                printf "O par ordenado (%f , %f) esta no primeiro quadrante\n" x y
        else if x < 0 && y > 0 then 
                printf "O par ordenado (%f , %f) esta no segundo quadrante\n" x y
        else if x < 0 && y < 0 then 
                printf "O par ordenado (%f , %f) esta no terceiro quadrante\n" x y
        else if x /= 0 && y == 0 then 
                printf "O par ordenado (%f , %f) esta no eixo Y\n" x y
        else if x == 0 && y /= 0 then 
                printf "O par ordenado (%f , %f) esta no eixo X\n" x y
        else
                printf "O par ordenado (%f , %f) esta no quarto quadrante\n" x y


isTriangulo = do
        a <- readLn :: IO Double
        b <- readLn :: IO Double
        c <- readLn :: IO Double
        let perimetro = a+b+c
        if (a > (b-c)) && (a < (b+c)) && (b > (a-c)) && (b < (a+c)) && (c > (a-b)) && (c < (a+b)) then 
                putStrLn "Eh triengulo"
        else
                printf "not\n"   


tempoJogo :: Int -> Int -> Int -> Int
tempoJogo x y z | x == y && z == 0 = 24
                | x > 23 = tempoJogo 0 y z
                | x /= y = tempoJogo (x+1) y (z+1)
                | otherwise = z
                
        
