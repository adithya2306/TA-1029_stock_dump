TTMEM=$(cat /proc/meminfo | grep -m 1 "MemTotal:" | cut -d' ' -f 9- | cut -d'k' -f1)
echo "MemTotal: $TTMEM"
mkdir /mnt/tmpfs
if [ $TTMEM -gt 1048576 ]; then
	echo "TMPFS 1000m"
	mount -t tmpfs -o size=1000m none /mnt/tmpfs
else
	echo "TMPFS 300m"
	mount -t tmpfs -o size=300m none /mnt/tmpfs
fi
cp -rf --preserve=a /data/preload-app /mnt/tmpfs/
umount /data
/system/bin/data_umount
make_ext4fs /dev/block/bootdevice/by-name/userdata
mount -t ext4 /dev/block/bootdevice/by-name/userdata /data
cp -rf --preserve=a /mnt/tmpfs/preload-app /data
