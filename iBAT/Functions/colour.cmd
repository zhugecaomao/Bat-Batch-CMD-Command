::findstr 彩显文字，此处 %1 为颜色设置，详见 color /?，%2 为要彩显的内容
:colour attr String
pushd "%temp%"&set/p= <nul>"%~2"&findstr /a:%~1 .* "%~2" nul&del "%~2"&popd