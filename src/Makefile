# PortForward Guard LuCI Interface
# Build for OpenWrt

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-portforward-guard
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_LICENSE:=GPL-3.0
PKG_MAINTAINER:=diciky
PKG_ARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-portforward-guard
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Services
  TITLE:=PortForward Guard
  URL:=https://github.com/diciky/luci-app-portforward-guard
  PKGARCH:=all
  DEPENDS:=+luci-base +luci-compat +ipset +kmod-ipt-ipset +conntrack-tools +curl +jsonfilter
endef

define Package/luci-app-portforward-guard/description
  PortForward Guard - Monitor and protect port forwarding connections
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-portforward-guard/install
	$(CP) -p ./root/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-portforward-guard))
