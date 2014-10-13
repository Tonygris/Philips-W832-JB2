mv -T ../jb2v3-0/build_result/kernel_.bin ./kernel
rm -R ./system/
mv -f -T ../jb2v3-0/build_result/system/ ./system/
# rm -f ./system/lib/modules/pvrsrvkm.ko
# rm -f ./system/lib/modules/mtklfb.ko
rm -f boot.img
./repack-MT65xx.pl -boot kernel boot.img-ramdisk boot.img
zip -u PACH_2.zip
rm -f recoveryCWM.img
rm -f recoveryTWRP.img
rm -f recoveryTWRP.2.6.3.0.img
rm -f recoveryTWRP.2.7.1.0.img
./repack-MT65xx.pl -recovery kernel recoveryCWM.img-ramdisk recoveryCWM.img
./repack-MT65xx.pl -recovery kernel recoveryTWRP.img-ramdisk recoveryTWRP.img
./repack-MT65xx.pl -recovery kernel recoveryTWRP.2.6.3.0.img-ramdisk recoveryTWRP.2.6.3.0.img
./repack-MT65xx.pl -recovery kernel recoveryTWRP.2.7.1.0.img-ramdisk recoveryTWRP.2.7.1.0.img
cp -R recoveryCWM.img /media/clarc/B246-EFDE/
cp -R recoveryTWRP.img /media/clarc/B246-EFDE/
cp -R recoveryTWRP.2.6.3.0.img /media/clarc/B246-EFDE/
cp -R recoveryTWRP.2.7.1.0.img /media/clarc/B246-EFDE/
cp -R PACH_2.zip /media/clarc/B246-EFDE/
