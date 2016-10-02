#
## Makefile for OnePlus X
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := AntHalService Bluetooth BluetoothExt BluetoothMidiService CertInstaller DiracManager KeyChain PacProcessor PrintSpooler \
	shutdownlistener Stk TimeService UserDictionaryProvider  \

local-phone-priv-apps := BackupRestoreConfirmation CellBroadcastReceiver CNEService com.qualcomm.location ExternalStorageProvider \
	FusedLocation InputDevices ProxyHandler qcrilmsgtunnel SharedStorageBackup Shell  \

local-density := XXHDPI
local-target-bit := 32

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
