###*
@private
###
Ext.define( 'Superstruct.touch.device.barcodescanner.Simulator',
  extend: 'Superstruct.touch.device.barcodescanner.Abstract'

  ###*
  @return {Deft.promise.Promise}
  ###
  scan: ->
    deferred = Ext.create( 'Deft.promise.Deferred' )

    setTimeout(->
      deferred.resolve() # TODO mock
    , 100)

    deferred
)