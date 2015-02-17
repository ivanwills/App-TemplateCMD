{
    "author"     : "Ivan Wills <ivan.wills@gmail.com>",
    "name"       : "[% module %]",
    "description": "",
    "version"    : "0.0.1",
    "license"    : "GPL-3.0+",
    "keywords"   : [""],
    "bin"        : {},
    "man"        : {},
    "main"       : "index.js",
    "repository" : {
        "type": "git",
        "url" : "git://github.com/ivanwills/[% module %].git"
    },
    "bugs":  "https://github.com/ivanwills/[% module %]/issues",
    "dependencies": {
    },
    "devDependencies": {
        "assert"        : "*",
        "gulp"          : "*",
        "gulp-istanbul" : "*",
        "gulp-jshint"   : "*",
        "gulp-mocha"    : "*",
[%- IF sonar %]
        "gulp-sonar"    : "*",
[%- END %]
        "gulp-util"     : "*"
    },
    "optionalDependencies": {},
    "engines": {
        "node": "*"
    }
}
