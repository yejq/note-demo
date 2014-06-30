echo off
xcopy source\images  build\html\images /y/e/Q
pandoc -s -S --toc --toc-depth=5 -c css/manual.css --template=template/default.html5 -A  template/footer.html source/README.md -o build/html/README.html

echo 如果没报错的话，就表示成功了，亲!
pause