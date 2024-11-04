const express = require('express');
const fs = require('fs');
const path = require('path');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(bodyParser.json());

const readDataFile = (callback) => {
  const filePath = path.join(__dirname, 'data.json');
  fs.readFile(filePath, 'utf8', (err, data) => {
    if (err) {
      console.error('Error reading file:', err);
      callback(err, null);
      return;
    }
    try {
      const jsonData = JSON.parse(data);
      callback(null, jsonData);
    } catch (parseError) {
      console.error('Error parsing JSON:', parseError);
      callback(parseError, null);
    }
  });
};

// Endpoint to return all data for both GET and POST requests
app.all('/fetch-data', (req, res) => {
  readDataFile((err, jsonData) => {
    if (err) {
      res.status(500).json({ error: 'Failed to read data' });
      return;
    }
    res.json(jsonData);
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
  console.log('Use /fetch-data endpoint with GET or POST to get all data');
});