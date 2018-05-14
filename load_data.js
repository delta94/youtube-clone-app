// This script is used for creating newsfeed_update.sql file from other file automatically
// How to run: node load_data.js > <path to newsfeed_update.sql>

var fs = require('fs');
var folder = __dirname + '/data/SQLtest/';

fs.readdir(folder, (err, files) => {
    if(err){
        throw err;
    }

    files.forEach((file) => {
        console.log(`select 'loading ${file} ...' as 'info';`);
        console.log(`source ${file};`);
    });
});