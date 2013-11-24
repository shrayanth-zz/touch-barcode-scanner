describe( 'Superstruct.touch.device.BarcodeScanner', ->

  specify( 'is an instanceof Superstruct.touch.device.barcodescanner.Simulator in a non-cordova environment', ->
    expect( Superstruct.touch.device.BarcodeScanner ).to.be.instanceof( Superstruct.touch.device.barcodescanner.Simulator )
  )

)