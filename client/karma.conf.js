module.exports = function (config) {
    config.set({
        basePath: '.',
        frameworks: ['dart-unittest'],

        // list of files / patterns to load in the browser
        // all tests must be 'included', but all other libraries must be 'served' and
        // optionally 'watched' only.
        files: [
            'test/*.dart',
            {pattern: '**/*.dart', watched: true, included: false, served: true},
            {pattern: '**/*.html', served: true, included: false},
            {pattern: '**/*.css', served: true, included: false},
            'packages/browser/dart.js',
            'packages/browser/interop.js'
        ],

        autoWatch: true,

        // If browser does not capture in given timeout [ms], kill it
        captureTimeout: 5000,

        plugins: [
            'karma-dart'
        ]
    });
};