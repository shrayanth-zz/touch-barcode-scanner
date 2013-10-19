describe( 'Superstruct.touch.device.barcodescanner.Cordova', ->

  before( ->
    window.plugins = {}
    window.plugins.barcodeScanner = {}
    window.plugins.barcodeScanner.scan = ->
  )

  specify( 'calls the barcode plugin API and returns a promise that is resolved on success', ->
    stub = sinon.stub(window.plugins.barcodeScanner, 'scan', ( success, failure ) ->
      setTimeout(->
        success()
      , 1)
    )

    scanner = Ext.create( 'Superstruct.touch.device.barcodescanner.Cordova' )

    expect( scanner.scan() ).to.be.fulfilled.then( ->
      expect( stub ).to.be.calledOnce
      stub.restore()
    )
  )

  specify( 'calls the barcode plugin API and returns a promise that is rejected on failure', ->
    stub = sinon.stub(window.plugins.barcodeScanner, 'scan', ( success, failure ) ->
      setTimeout(->
        failure()
      , 1)
    )

    scanner = Ext.create( 'Superstruct.touch.device.barcodescanner.Cordova' )

    expect( scanner.scan() ).to.be.rejected.then( ->
      expect( stub ).to.be.calledOnce
      stub.restore()
    )
  )
)