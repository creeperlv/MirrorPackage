wget https://github.com/MirrorNetworking/Mirror/archive/refs/tags/v89.6.8.zip -O mirror.zip
unzip mirror.zip -d Temp -q
mv Temp/*/Assets/Mirror ./Runtime/
mv Temp/*/Assets/Mirror.meta ./Runtime/
mv ./Runtime/Editor/ ./Editor/
mv Temp/*/Assets/ScriptTemplates ./Editor/
mv Temp/*/Assets/ScriptTemplates.meta ./Editor/
mv ./Runtime/Tests/ ./Tests/
mv ./Runtime/Examples ./Samples~/
mv Temp/*/LICENSE ./LICENSE
rm ./Temp -rf
rm mirror.zip
