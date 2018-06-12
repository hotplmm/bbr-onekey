# BBR-onekey
仅适用于Debian/Ubuntu系统。

开启 BBR（更新新版内核并开启原版BBR）

执行下面脚本一键开启

wget --no-check-certificate -qO 'BBR.sh' 'https://raw.githubusercontent.com/hotplmm/bbr-onekey/master/BBR.sh' && chmod a+x BBR.sh && bash BBR.sh -f

安装魔改版BBR

wget --no-check-certificate -qO 'BBR_POWERED.sh' 'https://raw.githubusercontent.com/hotplmm/bbr-onekey/master/BBR_POWERED.sh' && chmod a+x BBR_POWERED.sh && bash BBR_POWERED.sh

完成之后执行下面的命令检查是否安装成功

lsmod |grep 'bbr_powered'

如果结果有 bbr_powered 则说明加载成功！

关闭魔改版BBR

bash <(curl -s -L https://raw.githubusercontent.com/hotplmm/bbr-onekey/master/bbr-off.sh)

如果需要重新开启魔改版BBR，输入下面指令

bash <(curl -s -L https://raw.githubusercontent.com/hotplmm/bbr-onekey/master/bbr-on.sh)

新人试手之作！脚本来自网络，作者不详！本人稍作修改，只为方便查找备案参考！
