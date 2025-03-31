cmd_drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o := /home/yuzuki/WorkSpcae/tina-a133-5.0/out/toolchain/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc -Wp,-MD,drivers/net/wireless/aic8800/aic8800_fdrv/.rwnx_strs.o.d  -nostdinc -isystem /home/yuzuki/WorkSpcae/tina-a133-5.0/out/toolchain/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin/../lib/gcc/aarch64-linux-gnu/5.3.1/include -I./arch/arm64/include -I./arch/arm64/include/generated/uapi -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -mpc-relative-literal-loads -fno-pic -fno-delete-null-pointer-checks -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fstack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -DCONFIG_RWNX_DEBUGFS -DCONFIG_RWNX_UM_HELPER_DFLT=\""/dini/dini_bin/rwnx_umh.sh"\" -DNX_VIRT_DEV_MAX=4 -DNX_REMOTE_STA_MAX_FOR_OLD_IC=10 -DNX_REMOTE_STA_MAX=32 -DNX_MU_GROUP_MAX=62 -DNX_TXDESC_CNT=64 -DNX_TX_MAX_RATES=4 -DNX_CHAN_CTXT_CNT=3 -DCONFIG_START_FROM_BOOTROM -DCONFIG_PMIC_SETTING -DCONFIG_VRF_DCDC_MODE -DCONFIG_ROM_PATCH_EN -DCONFIG_COEX -DCONFIG_RWNX_FULLMAC -I. -I./drivers/net/wireless/aic8800/aic8800_fdrv -I./drivers/net/wireless/aic8800/aic8800_fdrv/../aic8800_bsp -DCONFIG_AIC_FW_PATH=\""/vendor/etc/firmware"\" -DCONFIG_RWNX_RADAR -DCONFIG_RWNX_MON_DATA -DCONFIG_RWNX_DBG -DCONFIG_RFTEST -DDEFAULT_COUNTRY_CODE=""\"00""\" -DCONFIG_SUPPORT_REALTIME_CHANGE_MAC -DCONFIG_SCHED_SCAN -DCONFIG_PREALLOC_TXQ -DAICWF_SDIO_SUPPORT -DCONFIG_SDIO_PWRCTRL -DCONFIG_USER_MAX=1 -DNX_TXQ_CNT=5 -DAICWF_RX_REORDER -DAICWF_ARP_OFFLOAD -DCONFIG_RX_NETIF_RECV_SKB -DAIC_TRACE_INCLUDE_PATH=drivers/net/wireless/aic8800/aic8800_fdrv -DCONFIG_PLATFORM_ALLWINNER -DANDROID_PLATFORM  -DMODULE -mcmodel=large  -DKBUILD_BASENAME='"rwnx_strs"'  -DKBUILD_MODNAME='"aic8800_fdrv"' -c -o drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.c

source_drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o := drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.c

deps_drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o := \
    $(wildcard include/config/req.h) \
    $(wildcard include/config/cfm.h) \
    $(wildcard include/config/rwnx/fullmac.h) \
  drivers/net/wireless/aic8800/aic8800_fdrv/lmac_msg.h \
    $(wildcard include/config/rwnx/fhost.h) \
    $(wildcard include/config/monitor/req.h) \
    $(wildcard include/config/monitor/cfm.h) \
    $(wildcard include/config/mcu/message.h) \
  drivers/net/wireless/aic8800/aic8800_fdrv/lmac_mac.h \
    $(wildcard include/config/he/for/old/kernel.h) \
    $(wildcard include/config/vht/for/old/kernel.h) \
  drivers/net/wireless/aic8800/aic8800_fdrv/lmac_types.h \
    $(wildcard include/config/rwnx/tl4.h) \
  include/generated/uapi/linux/version.h \
  include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm64/include/generated/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm64/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/kasan-checks.h \
  arch/arm64/include/uapi/asm/posix_types.h \
  include/uapi/asm-generic/posix_types.h \
  include/linux/bitops.h \
  include/linux/bits.h \
  arch/arm64/include/asm/bitops.h \
  arch/arm64/include/asm/barrier.h \
  include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
  include/asm-generic/bitops/builtin-__ffs.h \
  include/asm-generic/bitops/builtin-ffs.h \
  include/asm-generic/bitops/builtin-__fls.h \
  include/asm-generic/bitops/builtin-fls.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/le.h \
  arch/arm64/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  arch/arm64/include/generated/asm/swab.h \
  include/uapi/asm-generic/swab.h \
  include/linux/byteorder/generic.h \

drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o: $(deps_drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o)

$(deps_drivers/net/wireless/aic8800/aic8800_fdrv/rwnx_strs.o):
