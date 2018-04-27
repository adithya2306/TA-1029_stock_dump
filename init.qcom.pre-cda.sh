#!/system/bin/sh
#remove CDAStatus
/system/bin/rm "/hidden/data/CDA/CDAStatus"

flagPath="/hidden/data/CDA/CDASKUFinish"
skuid_Path="/hidden/data/CDALog/ID"
skuidfinal_Path="/hidden/data/CDALog/ID_Final"
# E1M-2807
initcda=1

echo "check file exits?"
if [ ! -f $flagPath ]; then
  echo "check 1, need"
  initcda=1
else
  echo "check value of:" $flagPath
  value=$(cat $flagPath)
  echo $value
  # if value not 1... InitCDA also...
  if [ $value -eq "1"  ]; then
    echo "check value is okay"
    initcda=0
  else
    initcda=1
  fi
fi

if [ ! -s $skuid_Path ]; then
  echo "SKUID check fail"
  initcda=1
fi

if [ ! -s $skuidfinal_Path ]; then
  echo "SKUID_FINAL check fail"
  initcda=1
fi


echo "check initcda:" $initcda
#Run initCDA
# if [ ! -f /hidden/data/CDA/CDASKUFinish ]; then
if [ "$initcda" -eq "1" ]; then
  echo "Do InitCDA -all"
  setprop sys.force.Idmap true
  /system/bin/InitCDA -all
  echo 1 > /hidden/data/CDA/CDASKUFinish
  # echo 1 > $flagPath ## maybe fix next time
fi

/system/bin/chown system.system  $flagPath
/system/bin/chmod 664  $flagPath
/system/bin/chown system.system  /hidden/data/CDA/CDASKUFinish
/system/bin/chmod 664  /hidden/data/CDA/CDASKUFinish


valueCheck=$(cat $flagPath)
echo "check CDASKUFinish value:" $valueCheck
# if not work... work again @@
if [ ! $valueCheck -eq "1"  ]; then
  "maybe still have problem, redo InitCDA again"  
  /system/bin/InitCDA -all
fi
      

#FihtdcCode@20160127 LiChuWang for PFAM-132 Begin
/system/bin/echo XXX > /data/cda/bootanimationTemp.zip
/system/bin/chmod 777 /data/cda/bootanimationTemp.zip
#FihtdcCode@20160127 LiChuWang for PFAM-132 End
