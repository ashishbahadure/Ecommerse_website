var express=require("express");
var app=express();
var bodyParser = require('body-parser');
var upload = require('express-fileupload')

var session = require('express-session');
app.use(bodyParser.urlencoded({extended:'true'}))
app.use(upload())
app.use(session({
    secret:'A2Z INFOTECH',
    resave:true,
    saveUninitialized:true
}));
app.use(express.static(__dirname + '/public'));


var adminpanel=require("./routes/admin/adminpanel");
app.use("/admin",adminpanel);

var userpanel=require("./routes/user/userpanel");
app.use("/",userpanel);

app.listen(1000);