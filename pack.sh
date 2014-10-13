cd jb2v3-0
TARGET_PRODUCT=tinno77_s9091jb2 ./build.sh clean
cd ..
tar -cvzf "4.2.2_20141013.tar.gz" ./arm-eabi-4.6 ./jb2v3-0 ./mtk-tools-master ./read-info-about-build ./pack.sh
