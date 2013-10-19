###*
@aside guide native_apis
###
Ext.define( 'Superstruct.touch.device.BarcodeScanner',
  singleton: true

  requires: [
    'Superstruct.touch.device.barcodescanner.Cordova'
    'Superstruct.touch.device.barcodescanner.Simulator'
  ]

  ###*
  @return {Superstruct.touch.device.barcodescanner.Cordova/Superstruct.touch.device.barcodescanner.Simulator}
  ###
  constructor: ->
    if Ext.browser.is.WebView and Ext.browser.is.Cordova
      Ext.create( 'Superstruct.touch.device.barcodescanner.Cordova' )
    else
      Ext.create( 'Superstruct.touch.device.barcodescanner.Simulator' )
)