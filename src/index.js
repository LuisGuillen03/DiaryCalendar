const express = require('express');
const morgan = require('morgan');
const path = require('path');
const { engine } = require('express-handlebars');
const flash = require ('connect-flash');
const session = require('express-session');
const MySQLStore = require('express-mysql-session')(session);
const {database} = require('./keys');
const passport = require('passport');


//inicializaciones
const app = express();
require('./lib/passport');

// Settings
app.set('port', process.env.PORT || 4000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', engine({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layaouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs',
    helpers: require('./lib/handlebars')
  }))
app.set('view engine', '.hbs');

//middlewares
app.use(session({
    secret: 'calendarsql',
    resave: false,
    saveUninitialized: false,
    store: new MySQLStore(database)
  }));
app.use(flash());
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));
app.use(express.json());
app.use(passport.initialize());
app.use(passport.session());

// Global variables
app.use((req,res,next) =>{
    app.locals.success = req.flash('success');
    app.locals.fail= req.flash('fail');
    app.locals.user= req.user;
    next();
});
// Routes
app.use(require('./routes/index'));
app.use(require('./routes/authentication'));
app.use(require('./routes/calendar'));

// Public
app.use(express.static(path.join(__dirname,'public')));

// Starting the server

app.listen(app.get('port'), ()=>{
    console.log('Server on port', app.get('port'));
});





