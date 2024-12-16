#
# Copyright (C) 2015-2016 Allwinner
#
# This is free software, licensed under the GNU General Public License v2.
# See /build/LICENSE for more information.
#
define KernelPackage/sunxi-uvc
  SUBMENU:=$(VIDEO_MENU)
  TITLE:=sunxi-uvc support
  FILES:=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-core.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-v4l2.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-memops.ko
  FILES+=$(LINUX_DIR)/drivers/media/v4l2-core/videobuf2-vmalloc.ko
  FILES+=$(LINUX_DIR)/drivers/media/usb/uvc/uvcvideo.ko
  KCONFIG:= \
    CONFIG_MEDIA_USB_SUPPORT=y \
    CONFIG_USB_VIDEO_CLASS \
    CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV
  AUTOLOAD:=$(call AutoLoad,95,videobuf2-core videobuf2-v4l2 videobuf2-memops videobuf2_vmalloc uvcvideo)
endef

define KernelPackage/sunxi-uvc/description
  Kernel modules for sunxi-uvc support
endef

$(eval $(call KernelPackage,sunxi-uvc))

define KernelPackage/sunxi-sound
  SUBMENU:=$(SOUND_MENU)
  DEPENDS:=+kmod-sound-core
  TITLE:=sun50iw10 sound support
  KCONFIG:= \
	CONFIG_SND_SUNXI_SOC=y \
	CONFIG_SND_SUNXI_SOC_RWFUNC=y \
	CONFIG_SND_SUN50IW10_CODEC \
	CONFIG_SND_SUNXI_SOC_SUN50IW10_CODEC \
	CONFIG_SUNXI_AUDIO_DEBUG=n

  FILES:=$(LINUX_DIR)/sound/soc/sunxi/sun50iw10-sndcodec.ko
  FILES+=$(LINUX_DIR)/sound/soc/sunxi/sun50iw10-codec.ko
  AUTOLOAD:=$(call AutoLoad,30,sun50iw10-sndcodec sun50iw10-codec)
endef

define KernelPackage/sunxi-sound/description
  Kernel modules for sun50iw10-sound support
endef

$(eval $(call KernelPackage,sunxi-sound))

define KernelPackage/leds-sunxi
  SUBMENU:=$(LEDS_MENU)
  TITLE:=leds-sunxi support
  FILES:=$(LINUX_DIR)/drivers/leds/leds-sunxi.ko
  KCONFIG:=CONFIG_LEDS_SUNXI
  AUTOLOAD:=$(call AutoLoad,60,leds-sunxi)
endef

define KernelPackage/leds-sunxi/description
  Kernel modules for leds sunxi support
endef

$(eval $(call KernelPackage,leds-sunxi))

define KernelPackage/ledtrig-doubleflash
  SUBMENU:=$(LEDS_MENU)
  TITLE:=LED DoubleFlash Trigger
  KCONFIG:=CONFIG_LEDS_TRIGGER_DOUBLEFLASH
  FILES:=$(LINUX_DIR)/drivers/leds/ledtrig-doubleflash.ko
  AUTOLOAD:=$(call AutoLoad,50,ledtrig-doubleflash)
endef

define KernelPackage/ledtrig-doubleflash/description
 Kernel module that allows LEDs to be controlled by a programmable doubleflash
 via sysfs
endef

$(eval $(call KernelPackage,ledtrig-doubleflash))

define KernelPackage/net-rtl8723ds
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=RTL8723DS support (staging)
  DEPENDS:= +r8723ds-firmware +@IPV6 +@USES_REALTEK +@PACKAGE_realtek-rftest +@PACKAGE_rtk_hciattach
  FILES:=$(LINUX_DIR)/drivers/net/wireless/rtl8723ds/8723ds.ko
  KCONFIG:=\
	CONFIG_RTL8723DS=m \
	CONFIG_BT=y \
	CONFIG_BT_BREDR=y \
	CONFIG_BT_RFCOMM=y \
	CONFIG_BT_RFCOMM_TTY=y \
	CONFIG_BT_DEBUGFS=y \
	CONFIG_BT_HCIUART_RTL3WIRE=y \
	CONFIG_BT_HCIUART=y \
	CONFIG_BT_HCIUART_H4=y \
	CONFIG_HFP_OVER_PCM=y \
	CONFIG_RFKILL=y \
	CONFIG_RFKILL_PM=y \
	CONFIG_RFKILL_GPIO=y

  AUTOLOAD:=$(call AutoProbe,8723ds)
endef

define KernelPackage/net-rtl8723ds/description
 Kernel modules for RealTek RTL8723DS support
endef

$(eval $(call KernelPackage,net-rtl8723ds))

define KernelPackage/net-rtl8821cs
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=RTL8821CS support (staging)
  DEPENDS:= +rtl8821cs-firmware +@IPV6 +@USES_REALTEK +@PACKAGE_realtek-rftest +@PACKAGE_rtk_hciattach
  FILES:=$(LINUX_DIR)/drivers/net/wireless/rtl8821cs/8821cs.ko
  KCONFIG:=\
	CONFIG_RTL8821CS=m \
	CONFIG_BT=y \
	CONFIG_BT_BREDR=y \
	CONFIG_BT_RFCOMM=y \
	CONFIG_BT_RFCOMM_TTY=y \
	CONFIG_BT_DEBUGFS=y \
	CONFIG_BT_HCIUART_RTL3WIRE=y \
	CONFIG_BT_HCIUART=y \
	CONFIG_BT_HCIUART_H4=y \
	CONFIG_HFP_OVER_PCM=y \
	CONFIG_RFKILL=y \
	CONFIG_RFKILL_PM=y \
	CONFIG_RFKILL_GPIO=y
  AUTOLOAD:=$(call AutoProbe,8821cs)
endef

define KernelPackage/net-rtl8821cs/description
 Kernel modules for RealTek RTL8821CS support
endef

$(eval $(call KernelPackage,net-rtl8821cs))

define KernelPackage/net-rtl8189fs
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=RTL8189FS support (staging)
  FILES:=$(LINUX_DIR)/drivers/net/wireless/rtl8189fs/8189fs.ko
  DEPENDS:=+@IPV6
  KCONFIG:=\
  CONFIG_RTL8189FS=m
  AUTOLOAD:=$(call AutoProbe,8189fs)
endef

define KernelPackage/net-rtl8189fs/description
 Kernel modules for RealTek RTL8189FS support
endef

$(eval $(call KernelPackage,net-rtl8189fs))

define KernelPackage/aic8800
  SUBMENU:=$(WIRELESS_MENU)
  TITLE:=aic8800 support
  FILES:=$(LINUX_DIR)/drivers/net/wireless/aic8800/aic8800_bsp/aic8800_bsp.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/aic8800/aic8800_fdrv/aic8800_fdrv.ko
  FILES+=$(LINUX_DIR)/drivers/net/wireless/aic8800/aic8800_btlpm/aic8800_btlpm.ko
  KCONFIG:=\
	CONFIG_AIC_WLAN_SUPPORT=y \
	CONFIG_AIC8800_WLAN_SUPPORT=y \
	CONFIG_AIC8800_BTLPM_SUPPORT=y

  AUTOLOAD:=$(call AutoProbe,aic8800_bsp aic8800_fdrv)
endef

define KernelPackage/aic8800/description
  Kernel modules for aic8800 support
endef

$(eval $(call KernelPackage,aic8800))

