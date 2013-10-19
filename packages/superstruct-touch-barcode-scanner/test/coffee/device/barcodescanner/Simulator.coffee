describe( 'Superstruct.touch.device.barcodescanner.Simulator', ->

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

    scanner = Ext.create( 'Superstruct.touch.device.barcodescanner.Simulator' )

    expect( scanner.scan() ).to.be.fulfilled.then( ->
      expect( stub ).not.to.be.called
      stub.restore()
    )
  )

)