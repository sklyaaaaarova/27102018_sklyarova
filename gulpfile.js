let gulp = require('gulp'),
    importCss = require('gulp-import-css'),
    cleanCSS = require('gulp-clean-css'),
    autoprefixer = require('gulp-autoprefixer'),
    watch = require('gulp-watch');

function generateCatalog () {
    return gulp .src( 'css/catalog.css' )
                .pipe(importCss())
                .pipe(autoprefixer({
                    browsers: ['>0.1%'],
                    cascade: false
                }))
                .pipe(cleanCSS({level: 2}))
                .pipe( gulp.dest('css/dist'));
}

function generateBasket () {
    return gulp .src( 'css/basket.css' )
                .pipe(importCss())
                .pipe(autoprefixer({
                    browsers: ['>0.1%'],
                    cascade: false
                }))
                .pipe(cleanCSS({level: 2}))
                .pipe( gulp.dest('css/dist'));
}

function watchChanes () {
    gulp.watch('css/blocks/**/*.css', gulp.series('style'));
    gulp.watch('css/blocks/*.css', gulp.series('styleBasket'));
}

// Задание, которое необходимо выполнить gulp-у
gulp.task('style', generateCatalog );
// Задание, которое необходимо выполнить gulp-у
gulp.task('styleBasket', generateBasket );
// задание на отслеживание
gulp.task('watch', watchChanes);

