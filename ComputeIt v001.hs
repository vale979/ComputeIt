import System.IO

gjlgn x = do
		if x `mod` 2 == 1
			then putStrLn " ganjil"
			else putStrLn " genap"
mutlak :: Integer -> IO()
mutlak x =	if x < 0
			then print(x * (-1))
			else print (x)
acce x y = x / y
main :: IO()
main = do
	putStrLn "Silahkan ketik angka sesuai yang anda inginkan :"
	putStrLn "1 untuk tes ganjil/genap"
	putStrLn "2 untuk nilai mutlak"
	putStrLn "3 untuk menghitung akselerasi apabila diketahui gaya total dan massa total"
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
			else if(a == "3")
			then do
			putStr "Tuliskan gaya total dan massa total, dipisah oleh enter : "
			hFlush stdout
			x <- readLn
			y <- readLn
			print (acce x y)
			else putStrLn "Apasih"
