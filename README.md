Sencha Touch / PhoneGap Barcode Scanner
=======================================

[![Build Status](https://travis-ci.org/superstruct/touch-barcode-scanner.png?branch=master)](https://travis-ci.org/superstruct/touch-barcode-scanner)
[![Stories in Ready](https://badge.waffle.io/superstruct/touch-barcode-scanner.png?label=Ready)](http://waffle.io/superstruct/touch-barcode-scanner)

Sencha Touch package that wraps the [PhoneGap Barcode Scanner plugin](https://build.phonegap.com/plugins/140)
( `com.phonegap.plugins.barcodescanner` ).

## Usage

1. Add the Superstruct Sencha Cmd repository

`sencha repo add --address https://superstruct.co/packages --name superstruct`

2. Add the package as a dependency in `app.json`

```js
"requires": [
  "superstruct-touch-barcode-scanner@1.0.1?"
]
```

3. Add the class `Superstruct.touch.device.BarcodeScanner` to the `requires` of
   the class that will be initiating the scan

```js
Ext.define( 'MyApp.service.BarcodeScanner', {

  requires: [
    'Superstruct.touch.device.BarcodeScanner'
  ]

});
```

4. Call the `scan()` method that will return a Deft JS Promise

```js
Superstruct.touch.device.BarcodeScanner.scan().then( function( result ) {
  Ext.Msg.alert(
    'Barcode Scanned',
    JSON.stringify( result ),
    Ext.emptyFn
  )
} ).otherwise( function( error ) {
  Ext.Msg.alert(
    'Error',
    error,
    Ext.emptyFn
  )
} );
```

5. Build the app

`sencha app build`

## Team

* [Isaac Johnston](https://github.com/superstructor)

## License

(The MIT License)

Copyright (c) 2013 Superstruct Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.