::findstr �������֣��˴� %1 Ϊ��ɫ���ã���� color /?��%2 ΪҪ���Ե�����
:colour attr String
pushd "%temp%"&set/p= <nul>"%~2"&findstr /a:%~1 .* "%~2" nul&del "%~2"&popd