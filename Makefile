old-dtb := $(dtb-y)
old-dtbo := $(dtbo-y)
dtb-y :=
dtbo-y :=
makefile-path := platform/t19x/jakku/kernel-dts

BUILD_ENABLE=n
ifneq ($(filter y,$(CONFIG_ARCH_TEGRA_19x_SOC) $(CONFIG_ARCH_TEGRA_194_SOC)),)
BUILD_ENABLE=y
endif

dtb-$(BUILD_ENABLE) += tegra194-p3668-all-p3509-0000.dtb
dtbo-$(BUILD_ENABLE) += tegra194-p3668-all-p3509-0000-hdr40.dtbo
dtbo-$(BUILD_ENABLE) += tegra194-p3668-all-p3509-0000-adafruit-sph0645lm4h.dtbo
dtbo-$(BUILD_ENABLE) += tegra194-p3668-all-p3509-0000-fe-pi-audio.dtbo
dtbo-$(BUILD_ENABLE) += tegra194-p3668-all-p3509-0000-respeaker-4-mic-array.dtbo

ifneq ($(dtb-y),)
dtb-y := $(addprefix $(makefile-path)/,$(dtb-y))
endif
ifneq ($(dtbo-y),)
dtbo-y := $(addprefix $(makefile-path)/,$(dtbo-y))
endif

dtb-y += $(old-dtb)
dtbo-y += $(old-dtbo)
