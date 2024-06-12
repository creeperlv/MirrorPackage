rm mirror.zip -f
wget https://github.com/MirrorNetworking/Mirror/archive/refs/tags/v89.8.1.zip -O mirror.zip
echo "Decompress to a temporary folder..."
	unzip mirror.zip -d Temp -q
echo "Removing old Mirror source code..."
	rm ./Runtime/ -rf
	rm ./Editor/ -rf
	rm Tests -rf
	rm ./Samples~/ -rf
echo "Moving Contents..."
	mv Temp/*/Assets/Mirror ./Runtime/
	mv Temp/*/Assets/Mirror.meta ./Runtime/
	mv ./Runtime/Editor/ ./Editor/
	mv Temp/*/Assets/ScriptTemplates ./Editor/
	mv Temp/*/Assets/ScriptTemplates.meta ./Editor/
	mv ./Runtime/Tests/ ./Tests/
	mv ./Runtime/Examples ./Samples~/
	mv Temp/*/LICENSE ./LICENSE
echo "Removing Temporary Files..."
	rm ./Temp -rf
	rm mirror.zip
echo "Done."
