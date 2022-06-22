build-centos8-template-bios:
	sudo kiwi-ng --profile=bios system build --description centos/x86_64/centos8/ --target-dir output/centos8-template-bios

build-centos8-template-uefi:
	sudo kiwi-ng --profile=uefi system build --description centos/x86_64/centos8/ --target-dir output/centos8-template-uefi

make clean:
	sudo rm -rf output/*