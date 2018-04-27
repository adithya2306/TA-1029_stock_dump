#!/system/bin/sh

## FihTdcCode@20140703 Edwin add for LSO-288: Use by-name partition path
/system/bin/UpdateCDA -r


#Store master reset command for UpdateSKU
mkdir /data/recovery/
chown root.shell /data/recovery/
chmod 770 /data/recovery/
