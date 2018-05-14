// This script is used for creating insert query to table bai_viet automatically
// How to run: node load_baiviet.js

var fs = require('fs');
var fileList = [];
var author = ['Linh', 'Huyen', 'Quynh', 'Yen Nhi', 'Anh Thu', 'Lan Anh', 'Lai Van Sam', 'Vo Thanh', 'Mai Thanh',
'Van Anh', 'Di Khanh', 'Nhat Ha'
];
var idBV = 1;

var query = `insert into bai_viet values\n`;

function ReadFileRecursively(dir){
    //console.log(dir);
    let files = fs.readdirSync(__dirname + '/' + dir);
    files.forEach((file) => {
        if(fs.statSync(dir + '/' + file).isDirectory()){
            ReadFileRecursively(dir + '/' + file);
        }
        else{
            fileList.push({Noi_dung: (dir + '/' + file).replace('data/post/', '')});
        }
    });
}

ReadFileRecursively('data/post');

fileList.forEach(file => {
    let newFileName = '';
    let tempArr = file['Noi_dung'].split('/');
    for(let i = 0; i < tempArr.length - 1; i++){
        newFileName += tempArr[i] + '/';
    }
    
    let topic;
    switch(newFileName){
        case 'thoisu/':
            topic = 'cd001';
            break;
        case 'kinhdoanh/':
            topic = 'cd002';
            break;
        case 'giaitri/':
            topic = 'cd003';
            break;
        case 'thethao/':
            topic = 'cd004';
            break;
        case 'phapluat/':
            topic = 'cd005';
            break;
        case 'thoisu/giaothong/':
            topic = 'cd006';
            break;
        case 'thoisu/nongnghiepsach/':
            topic = 'cd007';
            break;
        case 'kinhdoanh/doanhnghiep/':
            topic = 'cd008';
            break;
        case 'kinhdoanh/batdongsan/':
            topic = 'cd009';
            break;
        case 'kinhdoanh/chungkhoan/':
            topic = 'cd010';
            break;
        case 'giaitri/phim/':
            topic = 'cd011';
            break;
        case 'giaitri/thoitrang/':
            topic = 'cd012';
            break;
        case 'giaitri/nhac/':
            topic = 'cd013';
            break;
        case 'thethao/bongda/':
            topic = 'cd014';
            break;
        case 'thethao/hautruong/':
            topic = 'cd015';
            break;
        case 'thethao/tennis/':
            topic = 'cd016';
            break;
        case 'phapluat/hosophaan/':
            topic = 'cd017';
            break;
    }
    file['ID_TT'] = topic;
    file['Luot_quan_tam'] = Math.floor((Math.random() * 10));
    file['So_luong_luu'] = Math.floor(Math.random() * 6);
    file['Ten_tac_gia'] = author[Math.floor(Math.random()*(author.length))];
    if(idBV < 10){
        file['ID_BV'] = 'bv00' + idBV;
    }
    else if(idBV < 100){
        file['ID_BV'] = 'bv0' + idBV;
    }
    else{
        file['ID_BV'] = 'bv' + idBV;
    }
    idBV++;

    // Add to sql query
    query += `('${file['ID_BV']}', ${file['Luot_quan_tam']}, ${file['So_luong_luu']}, 1, '${file['ID_TT']}', '${file['Noi_dung']}', '${file['Ten_tac_gia']}'), \n`;
});

query = query.substr(0, query.length - 3) + ';';

console.log(query);
