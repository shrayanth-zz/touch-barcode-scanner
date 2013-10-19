window.global = window;

chai.should();

global.assert = chai.assert;
global.Assertion = chai.Assertion;
global.AssertionError = chai.AssertionError;
global.expect = chai.expect;
