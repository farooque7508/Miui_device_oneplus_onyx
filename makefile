#
## Makefile for OnePlus X
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := AntHalService Bluetooth BluetoothExt BluetoothMidiService CertInstaller DiracManager KeyChain PacProcessor PrintSpooler \
	shutdownlistener Stk telresources TimeService UserDictionaryProvider webview \

local-phone-priv-apps := BackupRestoreConfirmation CellBroadcastReceiver CNEService com.qualcomm.location ExternalStorageProvider \
	FusedLocation InputDevices ProxyHandler qcrilmsgtunnel SharedStorageBackup Shell  \

local-density := XXHDPI
local-target-bit := 32

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-pre-zip-misc:
	cp -rf other/system $(ZIP_DIR)/
