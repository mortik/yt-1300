// Karma configuration
// Generated on Sun Jan 25 2015 00:58:07 GMT+0100 (CET)

module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['jasmine'],
    files: [
      '**/*.js',
      'http://localhost:4567/javascripts/spec/mainSpec.js',
      'http://localhost:4567/javascripts/main.js'
    ],
    exclude: [
    ],
    preprocessors: {
    },
    reporters: ['progress'],
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: true,
    browsers: ['Chrome', 'PhantomJS'],
    singleRun: false
  });
};
