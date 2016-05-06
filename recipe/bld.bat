set SITECFG=lib/iris/etc/site.cfg
echo [System] > %SITECFG%
echo udunits2_path = %SCRIPTS%\udunits2.dll >> %SITECFG%

rmdir lib\iris\tests\results /s /q
del lib\iris\tests\*.npz

%PYTHON% setup.py install --single-version-externally-managed --record record.txt

:: Without this line, the OSX build fails reproducibly with
:: https://github.com/conda-forge/iris-feedstock/pull/2#issuecomment-217468453. We
:: therefore patched iris. This can be removed when the patch is removed.
%PYTHON% -c "import iris.fileformats.netcdf; iris.fileformats.netcdf._pyke_kb_engine()"
