/**
 * Forge webpack build rules for CommonJS module output.
 *
 * @author Digital Bazaar, Inc.
 *
 * Copyright 2011-2016 Digital Bazaar, Inc.
 */
const path = require('path');

// build single output
module.exports = [];

// setup for output
const output = {
  entry: ['./lib/index.js'],
  filenameBase: 'index',
  libraryTarget: 'commonjs-module'
};

// common to bundle and minified
const common = {
  // output uses the "forge" name
  entry: {
    forge: output.entry
  },
  // disable various node shims as forge handles this manually
  node: {
    Buffer: false,
    process: false,
    crypto: false,
    setImmediate: false
  }
};

// optimized and minified bundle
const minify = Object.assign({}, common, {
  mode: 'production',
  output: {
    path: path.join(__dirname, 'src', 'main', 'js', 'forge'),
    filename: output.filenameBase + '.js',
    libraryTarget: output.libraryTarget
  }
});

module.exports.push(minify);
