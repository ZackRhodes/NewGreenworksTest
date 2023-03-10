# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := copy_binaries
### Rules for action "Copy Binaries":
quiet_cmd_binding_gyp_copy_binaries_target_Copy_Binaries = ACTION binding_gyp_copy_binaries_target_Copy_Binaries $@
cmd_binding_gyp_copy_binaries_target_Copy_Binaries = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p lib; python tools/copy_binaries.py /Users/zackstein/Downloads/steamworks_sdk/redistributable_bin/osx/libsteam_api.dylib /Users/zackstein/Downloads/steamworks_sdk/public/steam/lib/osx/libsdkencryptedappticket.dylib /Users/zackstein/Documents/GitHub/Backup/greenworks/deps/discord_game_sdk/lib/x86_64/discord_game_sdk.dylib "$(builddir)/greenworks-osx.node" lib/osx

lib/osx: obj := $(abs_obj)
lib/osx: builddir := $(abs_builddir)
lib/osx: export BUILT_FRAMEWORKS_DIR := ${abs_builddir}
lib/osx: export BUILT_PRODUCTS_DIR := ${abs_builddir}
lib/osx: export CONFIGURATION := ${BUILDTYPE}
lib/osx: export PRODUCT_NAME := copy_binaries
lib/osx: export SDKROOT := /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
lib/osx: export SRCROOT := ${abs_srcdir}/
lib/osx: export SOURCE_ROOT := ${SRCROOT}
lib/osx: export TARGET_BUILD_DIR := ${abs_builddir}
lib/osx: export TEMP_DIR := ${TMPDIR}
lib/osx: export XCODE_VERSION_ACTUAL := 1201
lib/osx: TOOLSET := $(TOOLSET)
lib/osx: /Users/zackstein/Downloads/steamworks_sdk/redistributable_bin/osx/libsteam_api.dylib /Users/zackstein/Downloads/steamworks_sdk/public/steam/lib/osx/libsdkencryptedappticket.dylib /Users/zackstein/Documents/GitHub/Backup/greenworks/deps/discord_game_sdk/lib/x86_64/discord_game_sdk.dylib $(builddir)/greenworks-osx.node FORCE_DO_CMD
	$(call do_cmd,binding_gyp_copy_binaries_target_Copy_Binaries)

all_deps += lib/osx
action_binding_gyp_copy_binaries_target_Copy_Binaries_outputs := lib/osx


### Rules for final target.
# Build our special outputs first.
$(obj).target/copy_binaries.stamp: | $(action_binding_gyp_copy_binaries_target_Copy_Binaries_outputs)

# Preserve order dependency of special output on deps.
$(action_binding_gyp_copy_binaries_target_Copy_Binaries_outputs): | $(builddir)/greenworks-osx.node

$(obj).target/copy_binaries.stamp: TOOLSET := $(TOOLSET)
$(obj).target/copy_binaries.stamp: $(builddir)/greenworks-osx.node FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/copy_binaries.stamp
# Add target alias
.PHONY: copy_binaries
copy_binaries: $(obj).target/copy_binaries.stamp

# Add target alias to "all" target.
.PHONY: all
all: copy_binaries

