# 开机之前执行
#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容 即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}

# 这个脚本将以 post-fs-data 模式执行
# 更多信息请访问 Magisk 主题

#由于v1.2的版本更新后模块ID发生改变，所以需要删除掉旧版本的模块
rm -rf /data/adb/modules/scars