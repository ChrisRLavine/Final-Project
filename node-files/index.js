const express = require('express');
const app = express();

const cors = require('cors');
const bodyParser = require('body-parser');
const router = require('./app/routes/router');

const port = 3216;
app.listen(port, () => {
    console.log(`Server on port: ${port}`); 
});

app.use(cors());
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());


// ALL ROUTES

app.get('/', (req, res) => {
    res.json({
        //ALL COLOGNES ROUTE
        'All cologne':'http://localhost:3216/api/colognes',
        //FIND ALL COLOGNES BY ID
        'Find by Id':'http://localhost:3216/api/:id',

        // 'Find by Name':'http://localhost:4002/api/cologne/name',

        // 'Find by Image':'http://localhost:4002/api/cologne/picture',

        // 'Find by Brand':'http://localhost:4002/api/cologne/brand',

        // 'Find by Type':'http://localhost:4002/api/cologne/type',

        //  'Collect User Email':'http://localhost:4002/api/contact/email',

        // 'Collect User Account Email':'http://localhost:4002/api/account/email',

        // 'Collect User Account UName':'http://localhost:4002/api/account/username',

        // 'Collect User Account FName':'http://localhost:4002/api/account/fname',

        // 'Collect User Account LName':'http://localhost:4002/api/account/lname',

        // 'Collect User Account Password':'http://localhost:4002/api/account/password',

        // 'Collect User First Name':'http://localhost:4002/api/service/fname',

        // 'Collect User Last Name':'http://localhost:4002/api/service/lname',

        // 'Collect Users User Name':'http://localhost:4002/api/service/username',

        // 'Collect Users email for newsletter':'http://localhost:4002/contact/email'
    });
});

// app.post('/post', (req, res) => {
//     console.log(req.body);
    
//     res.json(req.body);
// });

app.use('/api', router);