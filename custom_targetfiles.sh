echo ">>> in $0"
OUT_DIR=out/merged_target_files

echo
echo ">>> create dir DATA/"
echo
mkdir -vp $OUT_DIR/DATA/
echo
echo ">>> move some apps into data"
echo
mkdir -vp $OUT_DIR/DATA/systemprivapp
mv -vf $OUT_DIR/SYSTEM/priv-app/* $OUT_DIR/DATA/systemprivapp
rm -rvf $OUT_DIR/SYSTEM/app/Camera/*
cp -rvf other/Camera/* $OUT_DIR/SYSTEM/app/Camera/
