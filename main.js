// Express server for serving the files
const express = require('express');
const path = require('path');
const app = express();

app.use(express.static('dist'));

// This is necessary for HTML5 routing
app.get('/*', function(req, res) {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(3000, () => console.log('Listening on port 3000!'));
