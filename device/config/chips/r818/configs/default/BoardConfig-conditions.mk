# condition config

# arch

# kernel
ifeq ($(filter-out %5.4,$(LICHEE_KERN_VER)),)
	LICHEE_BRANDY_DEFCONF      := sun50iw10p1_android11_defconfig
	ifeq ($(LICHEE_PLATFORM),android)
		ANDROID_CLANG_PATH     := prebuilts/clang/host/linux-x86/clang-r416183b1/bin
	endif
else ifeq ($(filter-out %5.10 %5.15,$(LICHEE_KERN_VER)),)
	LICHEE_USE_INDEPENDENT_BSP := true
	LICHEE_BRANDY_DEFCONF      := sun50iw10p1_android11_defconfig
	ifeq ($(LICHEE_PLATFORM),linux)
		ifneq ($(LICHEE_LINUX_DEV),dragonboard)
			LICHEE_KERN_DEFCONF:= bsp_defconfig
		endif
	endif
endif

# platform
ifeq ($(LICHEE_PLATFORM),android)
	LICHEE_PACK_HOOK := build/hook/pack/hook.sh
endif
