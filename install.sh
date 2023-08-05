echo "蔚蓝档案反和谐助手v1.0"
开源仓库:https://github.com/BlueArchiveCN/Anti-Harmony-Helper

#系统检测
if [ $1 == aa ]
then
    echo "Android adb版"
    echo "请确保已启用adb无线调试,并且输入你的配对端口号,并且在下一个输入框输入配对码"
    read pairPort
    ./adb pair 127.0.0.1:$pairPort
    echo "请输入你的连接端口号"
    read connectPort
    ./adb connect 127.0.0.1:$connectPort
    ./adb devices
    ./adb push ./af/* /storage/emulated/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/
elif [ $1 == ar ]
then
    echo "Android root版"
    su
    cp ./af/* /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/*
elif [ $1 == i ]
then
    echo "iOS版(试验性)"
    su
    cp ./if/* /private/var/mobile/Containers/Data/Application/0881226D-4C15-4B7C-96C7-CC392B6EABA3/Documents/AssetBundls
else
    echo "乱来"
fi