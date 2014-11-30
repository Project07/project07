var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');
var home = require('./routes/home');
var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.bodyParser());
app.use(express.cookieParser());

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

//app.get('/', routes.index);
//app.get('/users', user.list);

app.get('/', home.homePage);
app.get('/aboutUs', home.aboutUs);
app.get('/analysis', home.analysis);
app.get('/signIn', home.signIn);
app.post('/afterSignIn', home.afterSignIn);
app.get('/geographic', home.geographic);
app.get('/contacts', home.contacts);
app.get('/SignUp', home.signUp);
app.get('/changeThreshold', home.changeThreshold);
app.post('/afterSignUp', home.afterSignUp);
app.post('/afterChangeThreshold', home.afterChangeThreshold);



http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});