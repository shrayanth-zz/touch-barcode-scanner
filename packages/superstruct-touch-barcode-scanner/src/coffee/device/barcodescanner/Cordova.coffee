###*
@private
###
Ext.define( 'Superstruct.touch.device.barcodescanner.Cordova',
  alternateClassName: 'Superstruct.touch.device.barcodescanner.PhoneGap',
  extend: 'Superstruct.touch.device.barcodescanner.Abstract'

  ###*
  @return {Deft.promise.Promise}
  ###
  scan: ->
    deferred = Ext.create( 'Deft.promise.Deferred' )

    window.plugins.barcodeScanner.scan(
      ( result ) ->
        deferred.resolve( result )

      ( error ) ->
        deferred.reject( error )
    )

    deferred.promise
)