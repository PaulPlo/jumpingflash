css_pipeline = require 'css-pipeline'
browserify   = require 'roots-browserify'
records      = require 'roots-records'
templates    = require 'client-templates'
config       = require 'roots-config'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    browserify(files: 'assets/js/main.coffee', out: 'js/build.js', minify: true),
    css_pipeline(files: 'assets/css/*.scss', out:'/css/style.css', minify: true),
    templates(base:'views/templates'),
    records(
      datas_en: { file: 'locales/en.json' },
      datas_fr: { file: 'locales/fr.json' }
    )
  ]

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
    basedir: 'views'