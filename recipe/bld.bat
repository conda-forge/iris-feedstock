rmdir lib\iris\tests\results /s /q
del lib\iris\tests\*.npz

%PYTHON% -m pip install --no-deps --ignore-installed .
