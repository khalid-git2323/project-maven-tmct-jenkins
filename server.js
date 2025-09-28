const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hello from Node.js App running inside Docker + Jenkins!');
});

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
