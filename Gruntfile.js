function gruntFile(grunt) {
    require('time-grunt')(grunt);
    require('load-grunt-config')(grunt);

    grunt.loadNpmTasks('grunt-run');
    grunt.loadNpmTasks('grunt-stylelint');
    /* Add other grunt tasks here */
    grunt.registerTask('default', ['eslint', 'svgstore']);
};

module.exports = gruntFile;
