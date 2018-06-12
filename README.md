# BBR-onekey
仅适用于Debian/Ubuntu系统。

开启 BBR

执行下面脚本一键开启

wget --no-check-certificate -qO 'BBR.sh' 'https://moeclub.org/attachment/LinuxShell/BBR.sh' && chmod a+x BBR.sh && bash BBR.sh -f

安装魔改版BBR

wget --no-check-certificate -qO 'BBR_POWERED.sh' 'https://moeclub.org/attachment/LinuxShell/BBR_POWERED.sh' && chmod a+x BBR_POWERED.sh && bash BBR_POWERED.sh

完成之后执行下面的命令检查是否安装成功

lsmod |grep 'bbr_powered'

如果结果有 bbr_powered 则说明加载成功！
