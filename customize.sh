# Magisk 模块脚本配置

# 说明：
# 1. 将你要替换的文件放入 system 文件夹 (删除 placeholder 文件)
# 2. 将模块信息写入 module.prop
# 3. 在这个文件中进行设置 (customize.sh)
# 4. 如果你需要在启动时执行命令, 请把它们加入 post-fs-data.sh 或 service.sh
# 5. 如果需要修改系统属性(build.prop), 请把它加入 system.prop

# 如果你需要启用 Magic Mount 请把它设置为 true 不启用则设置为 false
# 大多数模块都需要启用它
AUTOMOUNT=true

# 列出你想在系统中直接删除的所有路径 一行一个路径 只能文件夹 不能文件 并且只能system里面的文件夹
# 此命令会删除下列路径文件夹内的所有文件
REPLACE="
"

# 这个文件 (customize.sh) 将被安装脚本在 util_functions.sh 之后 source 化（设置为环境变量）
# 如果你需要自定义操作, 请在这里以函数方式定义它们 然后在 update-binary 里调用这些函数
# 不要直接向 update-binary 添加代码 因为这会让你很难将模块迁移到新的模板版本
# 尽量不要对 update-binary 文件做其他修改 尽量只在其中执行函数调用