DATA_ROOT="/data"
#CONTENT_LIST=`ls ${DATA_ROOT} | tr '\n' ' '`
CONTENT_LIST=`/system/bin/ls ${DATA_ROOT}`

echo ${CONTENT_LIST}

for ITEM in ${CONTENT_LIST}
do
    if [ "${ITEM}" == "preload-app" ]; then
        echo "Skipping ${DATA_ROOT}/${ITEM}"
        continue
    fi

    if [ -d ${DATA_ROOT}/${ITEM} ]; then
        echo "Removing DIR: ${DATA_ROOT}/${ITEM}"
        echo "rm -rf ${DATA_ROOT}/${ITEM}"
        /system/bin/rm -rf ${DATA_ROOT}/${ITEM}
    elif  [ -f ${DATA_ROOT}/${ITEM} ]; then
        echo "Removing FILE: ${DATA_ROOT}/${ITEM}"
        echo "rm -f ${DATA_ROOT}/${ITEM}"
        /system/bin/rm -f ${DATA_ROOT}/${ITEM}
    fi
done
