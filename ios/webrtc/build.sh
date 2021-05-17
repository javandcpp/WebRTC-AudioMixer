# !/bin/bash

archs=("armv7" "armv7s" "arm64" "i386" "x86_64")
 # "armv7s" "arm64" "i386" "x86_64"

CURDIR=`pwd`
PLATFORM=
INSTALL_DIR=

buildFunc(){
for ARCHS in ${archs[@]}
do
	sudo rm -rf build
	mkdir build
	cd build

	if [[ ${ARCHS} = "i386" ]];then
		PLATFORM="SIMULATOR"
	elif [[ ${ARCHS} = "x86_64" ]];then
		PLATFORM="SIMULATOR64"
	else
		PLATFORM="OS"
	fi

	echo "building:" $ARCHS   $PLATFORM


	INSTALL_DIR=$CURDIR/${ARCHS}_ios

	rm -rf $INSTALL_DIR

	echo "installdir:" $INSTALL_DIR
	cmake .. \
	-DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
	-DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake \
	-DPLATFORM=$PLATFORM \
	-DARCHS=$ARCHS \
	-DCMAKE_BUILD_TYPE="Release" \
	-DDEPLOYMENT_TARGET="8.0" \
	-DWEBRTC_POSIX=1 \
	-DWEBRTC_IOS=1 \

	make -j12
	make install

	cd ..

done
}

LIPO_INPUT=
LIPO_OUTPUT=`pwd`/universal

mergeFunc(){
for ARCHS in ${archs[@]}
do

	LIBDIR=`pwd`/${ARCHS}_ios

	libtool -static $LIBDIR/libapi.a ${LIBDIR}/libaudio.a ${LIBDIR}/libcommon_audio.a ${LIBDIR}/libmodules.a ${LIBDIR}/librtcbase.a ${LIBDIR}/libsys_wrappers.a -o ${LIBDIR}/libwebrtc.a 

done
}

mergeFunc2(){
for ARCHS in ${archs[@]}
do

	LIBDIR=`pwd`/${ARCHS}_ios
	LIPO_INPUT="$LIPO_INPUT $LIBDIR/libwebrtc.a"

done
}


buildFunc
mergeFunc
mergeFunc2


mkdir $LIPO_OUTPUT

lipo -create $LIPO_INPUT -output $LIPO_OUTPUT/libwebrtc.a
lipo -info $LIPO_OUTPUT/libwebrtc.a