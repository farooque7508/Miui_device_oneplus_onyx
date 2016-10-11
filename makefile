#
## Makefile for OnePlus X
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := AntHalService BasicDreams Bluetooth BluetoothExt BluetoothMidiService btmultisim BTtestmode CABLService \
	CaptivePortalLogin CertInstaller DiracManager embms EngineeringMode EngSpecialTest fastdormancy Galaxy4 HoloSpiralWallpaper \
	HTMLViewer KeyChain LiveWallpapers LogKitSdService NoiseField NVBackupUI PacProcessor PermissionUtil PhaseBeam PrintSpooler \
	SdCardService shutdownlistener Stk telresources TimeService UserDictionaryProvider WAPPushManager webview WfdService WifiRfTestApk \
	xdivert

local-phone-priv-apps := BackupRestoreConfirmation CarrierConfig CellBroadcastReceiver CNEService com.qualcomm.location DefaultContainerService \
	ExternalStorageProvider FusedLocation InputDevices OneTimeInitializer OPDeviceManager OPDeviceManagerProvider OPNetworkSetting \
	OPWifiApSettings ProxyHandler qcrilmsgtunnel QtiTetherService SharedStorageBackup Shell

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
