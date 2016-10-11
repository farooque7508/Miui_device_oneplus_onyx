import common
import edify_generator

def AddAssertions(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
      edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "OnePlus" || getprop("ro.product.device") == "onyx" || getprop("ro.build.product") == "onyx" || getprop("ro.product.device") == "ONE" || getprop("ro.build.product") == "ONE" ||')
  return

def FullOTA_InstallEnd(info):
  AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
  AddAssertions(info)
