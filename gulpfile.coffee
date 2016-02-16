gulp = require 'gulp'
coffee = require 'gulp-coffee'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'default', ['coffee','static']

gulp.task 'coffee', ->
	gulp.src 'src/**/*.coffee'
		.pipe sourcemaps.init()
		.pipe coffee()
		.pipe sourcemaps.write sourceRoot: './src'
		.pipe gulp.dest 'build/'

gulp.task 'static', ->
	gulp.src 'src/views/*'
		.pipe gulp.dest 'build/views'
