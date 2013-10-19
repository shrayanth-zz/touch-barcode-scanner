/**
 * Karma configuration
 */

var path = require( 'path' );

module.exports = function( config ) {
  config.set({

    // base path, that will be used to resolve files and exclude
    basePath: path.join( '..', '..' ),


    // frameworks to use
    frameworks: [ 'mocha' ],


    // list of files / patterns to load in the browser
    files: [
      // Sencha Touch
      'http://cdn.sencha.io/touch/sencha-touch-2.3.0/sencha-touch-all.js',

      // test libraries
      path.join( 'text', 'vendor', 'mocha-as-promised-1.4.0', 'mocha-as-promised.js' ),
      path.join( 'test', 'vendor', 'chai-1.8.0', 'chai.js' ),
      path.join( 'test', 'vendor', 'chai-as-promised-4.0.0', 'chai-as-promised.js' ),
      path.join( 'test', 'vendor', 'sinon-1.7.3', 'sinon.js' ),
      path.join( 'test', 'vendor', 'sinon-1.7.3', 'sinon-ie.js' ),
      path.join( 'test', 'vendor', 'sinon-chai-2.4.0', 'sinon-chai.js' ),
      path.join( 'test', 'vendor', 'sinon-sencha-1.0.0', 'sinon-sencha.js' ),

      // chai setup
      path.join( 'test', 'chai-setup.js' ),

      // build
      path.join( 'build', 'superstruct-touch-barcode-scanner.js' ),

      // unit tests
      path.join( 'test', 'js', '**', '*.js' )
    ],


    // list of files to exclude
    exclude: [
      
    ],


    // test results reporter to use
    // possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: [ 'progress' ],


    // web server port
    port: 9876,


    // enable / disable colors in the output (reporters and logs)
    colors: true,


    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,


    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: false,


    // Start these browsers, currently available:
    // - Chrome
    // - ChromeCanary
    // - Firefox
    // - Opera
    // - Safari (only Mac)
    // - PhantomJS
    // - IE (only Windows)
    browsers: [ 'PhantomJS', 'Firefox' ],


    // If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000,


    // Continuous Integration mode
    // if true, it capture browsers, run tests and exit
    singleRun: true
  });
};
