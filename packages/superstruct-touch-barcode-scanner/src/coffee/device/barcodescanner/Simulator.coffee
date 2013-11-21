###*
@private
###
Ext.define( 'Superstruct.touch.device.barcodescanner.Simulator',
  extend: 'Superstruct.touch.device.barcodescanner.Abstract'

  ###*
  @return {Deft.promise.Promise}
  ###
  scan: ->
    Deft.promise.Deferred.resolve(
      text: '100600R3'
      format: 'SIMULATOR'
      cancelled: false
    )
)