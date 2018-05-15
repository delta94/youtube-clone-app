const express = require('express');
const mysql = require('mysql');
const fs = require('fs');
const bodyParser = require('body-parser');
const sessions = require('express-session');
const expressValidator = require('express-validator');
const cookieParser = require('cookie-parser');

const app = express();
app.set('view engine', 'ejs');
app.use('/assets', express.static('assets'));
app.use('*/assets', express.static('assets'));
app.use('/images', express.static('images'));
app.use('*/images', express.static('images'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(sessions({
    secret: '%$#@%*^fdjsakjfk@#$!@#$55943257',
    resave: false,
    saveUninitialized: true
}));
app.use(cookieParser());
app.use(expressValidator());

// Data for index page
var data = {
    toDay: Date(),
    content: [],    // use for popular post
    post: {},    // use for single page content
    username: '',    // use to know user
    relatedPost: [],
    comments: []
};
var session;

// Database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'ngoctin',
    password: '123456',
    database: 'newsfeed_update'
});

db.connect((err) => {
    if(err) console.log(err);
    else console.log('Mysql connected ...');
});

// Get Content for index page
function getDataContent(topic = '', callBack = null){
    data.content = [];
    console.log(`topic: ${topic}`);
    let mysqlQuery = `select * from bai_viet where Noi_dung like "%${topic}%" and Trang_thai = 1 order by Luot_quan_tam desc limit 10`;
    //console.log(mysqlQuery);
    db.query(mysqlQuery, (err, result) => {
        if(err){
            console.log(err);
        }
        else {
            result.forEach((bv) => {
                // fs.readFile(filePath, 'utf8', (err, fileContent) => {
                //     if(err) throw err;
                //     let item = JSON.parse(fileContent);
                //     item.linkPost = bv["Noi_dung"].split(".")[0];
                //     //console.log(item);
                //     data.content.push(item);
                //     if(numberOfPost == result.length && callBack != null){
                //         console.log('complete request');
                //         callBack();
                //     }
                // });

                let filePath = __dirname + "/data/post/" + bv["Noi_dung"];
                // Read file to fetch content
                let fileContent = fs.readFileSync(filePath, 'utf8');
                let item = JSON.parse(fileContent);
                item.linkPost = bv["Noi_dung"].split(".")[0];
                data.content.push(item);
            });
            //console.log(data.content);
            if(callBack != null){
                console.log('Complete loading data content');
                callBack();
            }
        }
    });
}

function getDataByTopic(topic, number = 5, callBack = null){
    let mysql = `select * from bai_viet where Noi_dung like '%${topic}%' and Trang_thai = 1 order by Luot_quan_tam desc limit ${number}`;
    data[topic] = [];
    db.query(mysql, (err, result) => {
        if(err){
            console.log(err);
        }
        else{
            let numberOfPost = 0;
            result.forEach((post) => {
                let filePath = __dirname + '/data/post/' + post['Noi_dung'];
                // Read file to fetch content
                fs.readFile(filePath, 'utf8', (err, fileContent) => {
                    if(err) throw err;
                    numberOfPost++;
                    let item = JSON.parse(fileContent);
                    item.linkPost = post['Noi_dung'].split('.')[0];
                    data[topic].push(item);
                    //console.log(item);
                    if(numberOfPost == number && callBack){
                        callBack();
                    }
                });
            });
        }
    });
}

function loadComment(post, maximum = 20, callBack = null){
    post += '.json';
    let sql = `select *, bl.Noi_dung from binh_luan as bl, bai_viet as bv
    where bl.ID_BV = bv.ID_BV and bv.Noi_dung = '${post}' and bl.Trang_thai = 1 limit ${maximum}`;
    db.query(sql, (err, results) => {
        if(err){
            console.log(err);
        }
        else{
            data.comments = [];
            results.forEach((result) => {
                let item = {};
                item['Noi_dung'] = result['Noi_dung'];
                item['Thoi_gian'] = result['Thoi_gian'];
                item['So_luot_thich'] = result['So_luot_thich'];
                item['ID_BL_Cha'] = result['ID_BL_Cha'];
                //console.log(item);
                data.comments.push(item);
            });

            console.log(data.comments);
        }
    });
}

loadComment('giaitri/ca-khuc-ve-be-hai-an-hien-giac-mac-gay-xuc-dong');

function handleRequestForAPost(route){
    app.get(route + '/:fileName', (req, res) => {
        let fileName = route.slice(1, route.length) + '/' + req.params.fileName + ".json";
        console.log(fileName);
        let mysql = `select * from bai_viet where Noi_dung = "${fileName}" limit 1`;
        db.query(mysql, (err, result) => {
            if(err){
                console.log(err);
                res.render('404', {data: data});
            }
            else if(result.length > 0){
                let filePath = __dirname + "/data/post/" + result[0]["Noi_dung"];
                fs.readFile(filePath, (err, fileContent) => {
                    if(err){
                        console.log(err);
                        res.redirect('/404');
                    }
                    else{
                        data.post = JSON.parse(fileContent);
                        // get data for related post
                        
                        res.render('single_page', {data: data});
                    }
                    
                });
            }
            else{
                res.redirect('/404');
            }
        });
    });
}

function handleRequestForATopic(route){
    app.get(route, (req, res) => {
        //console.log(`route: ${route}`);
        let topic = route.slice(1, route.length);
        getDataContent(topic, () => {
            res.render('index', {data: data});
        });
    });
}

function getDataForAllTopics(callBack = null){
    let topics = ['thoisu', 'kinhdoanh', 'giaitri', 'thethao', 'phapluat'];
    let i;
    for(i = 0; i < topics.length; i++){
        if(!data[topics[i]]) break;
    }

    if(i == topics.length - 1 && callBack){
        callBack();
        return;
    }

    // Some topics are not loaded
    let numberOfTopics = 0;
    topics.forEach((topic) => {
        getDataByTopic(topic, 8, () => {
            numberOfTopics++;
            if(numberOfTopics == topics.length && callBack){
                callBack();
            }
        });
    });
}

getDataForAllTopics();

handleRequestForATopic('/thoisu');
handleRequestForATopic('/thoisu/giaothong');
handleRequestForATopic('/thoisu/nongnghiepsach');
handleRequestForATopic('/kinhdoanh');
handleRequestForATopic('/kinhdoanh/doanhnghiep');
handleRequestForATopic('/kinhdoanh/batdongsan');
handleRequestForATopic('/kinhdoanh/chungkhoan');
handleRequestForATopic('/giaitri');
handleRequestForATopic('/giaitri/phim');
handleRequestForATopic('/giaitri/thoitrang');
handleRequestForATopic('/giaitri/nhac');
handleRequestForATopic('/thethao');
handleRequestForATopic('/thethao/bongda');
handleRequestForATopic('/thethao/tennis');
handleRequestForATopic('/thethao/hautruong');
handleRequestForATopic('/phapluat');
handleRequestForATopic('/phapluat/hosophaan');

handleRequestForAPost('/thoisu');
handleRequestForAPost('/thoisu/giaothong');
handleRequestForAPost('/thoisu/nongnghiepsach');
handleRequestForAPost('/kinhdoanh');
handleRequestForAPost('/kinhdoanh/doanhnghiep');
handleRequestForAPost('/kinhdoanh/batdongsan');
handleRequestForAPost('/kinhdoanh/chungkhoan');
handleRequestForAPost('/giaitri');
handleRequestForAPost('/giaitri/phim');
handleRequestForAPost('giaitri/thoitrang');
handleRequestForAPost('/giaitri/nhac');
handleRequestForAPost('/thethao');
handleRequestForAPost('/thethao/bongda');
handleRequestForAPost('/thethao/tennis');
handleRequestForAPost('/thethao/hautruong');
handleRequestForAPost('/phapluat');
handleRequestForAPost('/phapluat/hosophaan');

app.get('/signin', (req, res) => {
    getDataContent('', () => {
        console.log('hello');
        res.render('signin', {data: data});
    });
});

app.post('/signin', (req, res) => {
    // Todo: Check this new account and add it to database
    console.log(`req.params = ${req.params}`);
    res.redirect('/redirect');
});

app.get('/login', (req, res) => {
    getDataContent('', () => {
        res.render('login', {data: data});
    });
});

app.post('/login', (req, res) => {
    req.body.username = req.body.username.split("\"")[0];
    req.body.username = req.body.username.split("\'")[0];
    req.body.password = req.body.password.split("\"")[0];
    req.body.password = req.body.password.split("\'")[0];
    console.log(`username = ${req.body.username}, password = ${req.body.password}`);
    let mysql = `select * from tai_khoan where Ten_dang_nhap = "${req.body.username}" and MK = "${req.body.password}"`;
    db.query(mysql, (err, result) => {
        if(err){
            console.log(err);
            res.redirect('/redirect');
        }
        else if(result.length > 0){
            req.session.username = req.body.username;
            data.username = req.body.username;
            console.log(data.username);
            res.redirect('/redirect');
        }
        else{
            res.redirect('/login');
        }
    });
});

app.get('/redirect', (req, res) => {  
    if(req.session.username == 'admin'){
        res.redirect('/admin');
    } else {
        res.redirect('/');
    }
});

app.get('/logout', (req, res) => {
    req.session.destroy((err) => {
        if(err){
            console.log(err);
        }
        data.username = '';
        res.redirect('/login');
    });
});

app.get('/', (req, res) => {
    if(req.session.username && req.session.username == 'admin'){
        res.redirect('/admin');
    } else{
        getDataContent('', () => {
            console.log('This is from get /');
            res.render('index', {data: data});
        });
        //res.render('index', {data: data});        
    }
});

app.get('/admin', (req, res) => {
    if(req.session.username == 'admin'){
        getDataContent('', () => {
            res.render('admin', {data: data});
        });
    }
    else {
        res.redirect('/login');
    }
});

app.get('/contact', (req, res) => {
    getDataContent('', () => {
        res.render('contact', {data: data});
    });
});

// app.get('/single_page', (req, res) => {
//     getDataContent('', () => {
//         res.render('index', {data: data});
//     });
// });

app.get('*', (req, res) => {
    getDataContent('', () => {
        res.render('404', {data: data});
    });
});

app.listen(3000, () => {
    console.log('Server listen on port 3000');
});
