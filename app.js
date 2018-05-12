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
let data = {
    toDay: Date(),
    content: [],
    post: {}    // use for single page content
};
var session;

// Database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'ngoctin',
    password: '123456',
    database: 'newsfeed'
});

db.connect((err) => {
    if(err) console.log(err);
    else console.log('Mysql connected ...');
});

// Get Content for index page
function getDataContent(callBack){
    if(data.content.length > 0) return;
    let mysqlQuery = 'select Noi_dung from bai_viet limit 10';
    db.query(mysqlQuery, (err, result) => {
        if(err){
            console.log(err);
        }
        else {
            result.forEach((bv) => {
                let filePath = __dirname + "/data/post/" + bv["Noi_dung"];
                // Read file to fetch content
                fs.readFile(filePath, 'utf8', (err, fileContent) => {
                    if(err) throw err;
                    let item = JSON.parse(fileContent);
                    item.linkPost = bv["Noi_dung"].split(".")[0];
                    data.content.push(item);
                });
            });
        }
    }, callBack);
}

function getDataByTopic(topic, number = 5, callBack){
    let mysql = `select * from bai_viet where Noi_dung like '%${topic}%' limit ${number}`;
    data[topic] = [];
    db.query(mysql, (err, result) => {
        if(err){
            console.log(err);
        }
        else{
            result.forEach((post) => {
                let filePath = __dirname + '/data/post/' + post['Noi_dung'];
                // Read file to fetch content
                fs.readFile(filePath, 'utf8', (err, fileContent) => {
                    if(err) throw err;
                    let item = JSON.parse(fileContent);
                    item.linkPost = post['Noi_dung'].split('.')[0];
                    data[topic].push(item);
                    //console.log(item);
                });
            });
        }
    }, callBack);
}

getDataContent();
getDataByTopic('thoisu');
getDataByTopic('kinhdoanh');
getDataByTopic('giaitri');
getDataByTopic('thethao');
getDataByTopic('phapluat');

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

handleRequestForAPost('/thoisu/giaothong');
handleRequestForAPost('/thoisu/nongnghiepsach');
handleRequestForAPost('/kinhdoanh/doanhnghiep');
handleRequestForAPost('/kinhdoanh/batdongsan');
handleRequestForAPost('/kinhdoanh/chungkhoan');
handleRequestForAPost('/giaitri/phim');
handleRequestForAPost('giaitri/thoitrang');
handleRequestForAPost('/giaitri/nhac');
handleRequestForAPost('/thethao/bongda');
handleRequestForAPost('/thethao/tennis');
handleRequestForAPost('/thethao/hautruong');
handleRequestForAPost('/phapluat/hosophaan');

app.get('/signin', (req, res) => {
    res.render('signin', {data: data});
});

app.post('/signin', (req, res) => {
    // Todo: Check this new account and add it to database
    res.redirect('/redirect');
});

app.get('/login', (req, res) => {
    res.render('login', {data: data});
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
        else if(result[0]["Ten_dang_nhap"]){
            req.session.username = req.body.username;
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
        res.redirect('/login');
    });
});

app.get('/', (req, res) => {
    if(req.session.username && req.session.username == 'admin'){
        res.redirect('/admin');
    } else{
        res.render('index', {data: data});        
    }
});

app.get('/admin', (req, res) => {
    if(req.session.username == 'admin'){
        res.render('admin', {data: data});
    }
    else {
        res.redirect('/login');
    }
});

app.get('/contact', (req, res) => {
    res.render('contact', {data: data});
});

app.get('/single_page', (req, res) => {
    res.render('single_page', {data: data});
});

app.get('*', (req, res) => {
    res.render('404');
});

app.listen(3001, () => {
    console.log('Server listen on port 3001');
});
