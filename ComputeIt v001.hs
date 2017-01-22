import System.IO

gjlgn x = do
		if x `mod` 2 == 1
			then putStrLn " ganjil"
			else putStrLn " genap"
mutlak :: Integer -> IO()
mutlak x =	if x < 0
			then print(x * (-1))
			else print (x)
main :: IO()
main = do
	putStrLn "Silahkan ketik angka sesuai yang anda inginkan :"
	putStrLn "1 untuk tes ganjil/genap"
	putStrLn "2 untuk nilai mutlak"
	a <- getLine
	if (a == "1")
		then do 
			putStr "Tuliskan angka yg ingin diuji ganjil atau genapnya : "
			hFlush stdout
			x <- readLn
			putStrLn ""
			putStr "Ternyata "
			putStr (show x)
			gjlgn x
		else if(a == "2")
			then do
			putStr "Tuliskan angka yg ingin dihitung nilai mutlaknya : "
			hFlush stdout
			x <- readLn
			mutlak x
			else putStrLn "Apasih"