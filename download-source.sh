mkdir -pv tmp
echo "downloading package source to tmp"
cd tmp; apt-get -q source plplot; cd ..
PLPLOT_SOURCE_PATH=$(find tmp -maxdepth 1 -name "plplot*" -type d -print -quit)
PLPLOT_VERSION=$(echo $PLPLOT_SOURCE_PATH | cut -d'-' -f2)
mv -v $PLPLOT_SOURCE_PATH/bindings/ocaml/plcairo/tests tests
mv -v $PLPLOT_SOURCE_PATH/bindings/ocaml lib
mv -v $PLPLOT_SOURCE_PATH/examples/ocaml examples
rm -rf tmp

find -name CMakeLists* -exec rm -v {} \;
find lib -name META.in -exec rm -v {} \;
rm -v examples/Makefile.examples.in
sed -i "s/^Version:.*/Version:     ${PLPLOT_VERSION}/" _oasis


