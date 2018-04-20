module.exports = function(grunt) {
  // 1. all config stuff goes here
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'), // reads the packages etc inside that file
    uglify: {
      // options: {
      //   nameCache: '.tmp/grunt-uglify-cache.json',
      // },
      my_target: {
        files: {
          'public/javascripts/dist/main.min.js': ['public/javascripts/main.js'],
          'public/javascripts/dist/videopage.min.js': ['public/javascripts/videoVM.js'],
          'public/javascripts/dist/formhandler.min.js': ['public/javascripts/formhandler.js']
        }
      }
    },

    watch: {
      sass: {
        files: ['public/stylesheets/*.scss'],
        tasks: ['sass']
      }
    },

    sass: {
      dist: {
        options: {
          style: 'compressed'
        },

        files: {
          'public/stylesheets/dist/style.css': 'public/stylesheets/master.scss',
          'public/stylesheets/dist/kids.css': 'public/stylesheets/kids.scss',
          'public/stylesheets/dist/form.css': 'public/stylesheets/form.scss',
          'public/stylesheets/dist/category.css': 'public/stylesheets/category.scss',
        }
      }
    }
  });


  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-uglify-es');

  grunt.registerTask('default', ['sass', 'uglify']);
  grunt.registerTask('watchFiles', ['watch', 'sass']);
};
