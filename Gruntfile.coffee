matchdep = require('matchdep')
path = require('path')

module.exports = (grunt) ->
	grunt.registerTask('default', ['slides', 'copy:assets'])
	grunt.registerTask('slides', ['assemble:slides', 'stylus:slides'])
	grunt.loadNpmTasks('assemble')
	
	# Load all grunt tasks (except grunt-cli) from NPM
	matchdep.filterDev('grunt-*').filter((dep) -> dep != 'grunt-cli').forEach(grunt.loadNpmTasks)    
	
	grunt.initConfig
		assemble:
			slides:
				options:
					partials: 'src/**/*.handlebars'
					flatten: true
					engine: 'jade'
				src: ['src/*.jade']
				dest: 'dist/'
		stylus:
			slides:
				options:
					compress: false
				files:
					'dist/index.css': ['src/**/*.styl']
		watch:
			slides:
				files: ['src/**/*.*']
				tasks: ['slides']

		copy:
			assets:
				src: [
					'bower_components/impress.js/js/impress.js'
					'bower_components/impressConsole.js/js/impressConsole.js'
					'bower_components/impressConsole.js/css/impressConsole.css'
					'bower_components/bootstrap/dist/css/bootstrap.css'
					'src/assets/*'
				]
				flatten: true
				dest: 'dist/assets/'
				expand: true
