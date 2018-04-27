#!/system/bin/sh

proj_id=($(cat /proc/devmodel))
bandinfo=($(cat /proc/bandinfo))
nv_path=/persist/WCNSS_qcom_wlan_nv.bin
ini_path=/data/misc/wifi/WCNSS_qcom_cfg.ini

cal_dest_nv_md5sum=`md5sum $nv_path`
dest_nv_md5sum=${cal_dest_nv_md5sum:0:32}

cal_dest_cfg_md5sum=`md5sum $ini_path`
dest_cfg_md5sum=${cal_dest_cfg_md5sum:0:32}

echo dest_nv_md5sum = $dest_nv_md5sum
echo dest_cfg_md5sum = $dest_cfg_md5sum

    setprop wifi.nv defautl_NV
    setprop wifi.cfg defautl_INI

    file_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_QC_nv.bin
    cfg_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_QC.ini

    if [ "$proj_id" = "E1M" ];then
        file_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_$proj_id\_nv.bin
        cfg_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_$proj_id.ini
        echo "setprop wifi.nv:"$proj_id\_NV
        setprop wifi.nv $proj_id\_NV
        setprop wifi.cfg $proj_id\.ini

    elif [ "$proj_id" = "AT2" ];then
        file_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_$proj_id\_nv.bin
        cfg_wifi_devmodel=/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_$proj_id.ini
        echo "setprop wifi.nv:"$proj_id\_NV
        setprop wifi.nv $proj_id\_NV
        setprop wifi.cfg $proj_id\.ini
    fi

cal_src_nv_md5sum=`md5sum $file_wifi_devmodel`
src_nv_md5sum=${cal_src_nv_md5sum:0:32}

cal_src_cfg_md5sum=`md5sum $cfg_wifi_devmodel`
src_cfg_md5sum=${cal_src_cfg_md5sum:0:32}

echo src_nv_md5sum = $src_nv_md5sum
echo src_cfg_md5sum = $src_cfg_md5sum

if [ "$dest_nv_md5sum" != "$src_nv_md5sum" ]; then
    cp $file_wifi_devmodel $nv_path
    chmod 644 $nv_path
    echo "cp src to dest"
else
    setprop wifi.nv NV_Exist
    echo "don't need copy"
fi

if [ "$dest_cfg_md5sum" != "$src_cfg_md5sum" ]; then
    cp $cfg_wifi_devmodel $ini_path
    chmod 644 $ini_path
    echo "cp src to dest"
else
    setprop wifi.cfg CFG_Exist
    echo "don't need copy"
fi