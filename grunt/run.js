module.exports = {
    jest: {
        cmd: 'npx',
        args: [
            'jest',
        ],
    },
    schemaTest: {
        options: {
            failOnError: true,
        },
        cmd: 'node',
        args: [
            './assets/js/ysw/cmd/schemaTest.js',
        ],
    },
};
